from io import BytesIO
from pathlib import Path
from typing import Optional
from zipfile import ZipFile
import json
import os
import requests


MC_VERSION = "1.19.4"
VERSION_MANIFEST_LINK = "https://launchermeta.mojang.com/mc/game/version_manifest.json"
DISABLE_VANILLA_PATH = Path('../disable-vanilla')


def download_client_jar() -> bytes:
    version_manifest = requests.get(VERSION_MANIFEST_LINK).json()
    version = requests.get(next(version["url"] for version in version_manifest["versions"]
                                if version["id"] == MC_VERSION)).json()
    return requests.get(version["downloads"]["client"]["url"]).content


def get_local_client_jar_path(version: str) -> Optional[Path]:
    if not(appdata := os.environ.get("APPDATA")):
        return None
    return Path(appdata, f".minecraft/versions/{version}/{version}.jar")


def generate_disable_vanilla_datapack(client_jar: bytes) -> None:
    with ZipFile(BytesIO(client_jar), 'r') as client_jar_zip:
        files = client_jar_zip.namelist()

    def strip(prefix: str) -> list[str]:
        return [filename[len(prefix):] for filename in files if filename.startswith(prefix)]

    advancements = strip('data/minecraft/advancements/')
    root_advancements = [advancement for advancement in advancements
                         if advancement.split('/')[-1] == 'root.json']
    loot_tables = strip('data/minecraft/loot_tables/')
    recipes = strip('data/minecraft/recipes/')

    DISABLE_VANILLA_PATH.mkdir(parents=True)
    with open(DISABLE_VANILLA_PATH / "pack.mcmeta", "w") as f:
        json.dump({
            "pack": {
                "pack_format": 12,
                "description": f"Disables Minecraft {MC_VERSION} vanilla advancements, loot tables and recipes",
            }
        }, f, indent=4)
        f.write("\n")

    datapack_path = DISABLE_VANILLA_PATH / 'data/minecraft'

    for advancement in root_advancements:
        path = datapack_path / 'advancements' / advancement
        path.parent.mkdir(parents=True, exist_ok=True)
        path.touch()

    for loot_table in loot_tables:
        path = datapack_path / 'loot_tables' / loot_table
        path.parent.mkdir(parents=True, exist_ok=True)
        path.touch()

    for recipe in recipes:
        path = datapack_path / 'recipes' / recipe
        path.parent.mkdir(parents=True, exist_ok=True)
        path.touch()

    print("Generated disable-vanilla datapack.")


def main():
    if os.path.exists(DISABLE_VANILLA_PATH / "pack.mcmeta"):
        print("disable-vanilla datapack already exists.")
        return

    if path := get_local_client_jar_path(MC_VERSION):
        print("Using local client jar.")
        with open(path, "rb") as f:
            client_jar = f.read()
    else:
        print("Downloading client jar.")
        client_jar = download_client_jar()

    generate_disable_vanilla_datapack(client_jar)


if __name__ == "__main__":
    main()
