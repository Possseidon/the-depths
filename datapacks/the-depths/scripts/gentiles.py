import os
from pathlib import Path
from typing import TextIO
import colors

tiles_root = Path("data/td/structures/tiles")
gates_root = Path("data/td/structures/gates")

apply_tile_root = Path("data/td/functions/map/apply_random/tile")
apply_gate_root = Path("data/td/functions/map/apply_random/gate")


def create_path_and_open(filename: Path) -> TextIO:
    os.makedirs(filename.parent, exist_ok=True)
    return open(filename, "w")


def level_index(level: str) -> int:
    return int(level.removeprefix("level"))


def print_status(count: int, structure_type: str):
    print(
        f"Generated lookup for {colors.number}{count}{colors.reset} {structure_type}")


# Tiles

def generate_tile_level_lookup(levels: list[str]):
    with create_path_and_open(apply_tile_root.with_suffix(".out.mcfunction")) as file:
        file.write("# AUTO-GENERATED\n")
        for level in levels:
            file.write(f'execute as @s[nbt={{data: {{layer_index: {level_index(level)}b}}}}] run '
                       f'function td:map/apply_random/tile/{level}.out\n')
        file.write('data modify entity @s data.tile '
                   'merge from entity @e[sort=random,limit=1,tag=tile_lookup] data\n')
        file.write('kill @e[tag=tile_lookup]\n')


def generate_tile_type_lookup(level: str, tile_types: list[str]):
    with create_path_and_open(apply_tile_root / f"{level}.out.mcfunction") as file:
        file.write("# AUTO-GENERATED\n")
        for tile_type in tile_types:
            file.write(f'execute as @s[tag={tile_type}] run '
                       f'function td:map/apply_random/tile/{level}/{tile_type}.out\n')


def generate_tile_lookup(level: str, tile_type: str, tiles: list[str]):
    with create_path_and_open(apply_tile_root / level / f"{tile_type}.out.mcfunction") as file:
        file.write("# AUTO-GENERATED\n")
        for tile in tiles:
            file.write(
                f'summon marker ~ ~ ~ {{Tags: [tile_lookup], data: {{name: "td:tiles/{level}/{tile_type}/{tile}"}}}}\n')


def generate_tiles():
    total_tiles = 0

    levels = os.listdir(tiles_root)
    generate_tile_level_lookup(levels)
    for level in levels:
        tile_types = os.listdir(tiles_root / level)
        generate_tile_type_lookup(level, tile_types)
        for tile_type in tile_types:
            tiles = [tile.removesuffix(".nbt") for tile in
                     os.listdir(tiles_root / level / tile_type)]
            total_tiles += len(tiles)
            generate_tile_lookup(level, tile_type, tiles)

    print_status(total_tiles, "tiles")


# Gates

def generate_gate_level_lookup(levels: list[str]):
    for axis in "x", "z":
        with create_path_and_open((apply_gate_root / axis).with_suffix(f".out.mcfunction")) as file:
            file.write("# AUTO-GENERATED\n")
            for level in levels:
                file.write(f'execute as @s[nbt={{data: {{layer_index: {level_index(level)}b}}}}] run '
                           f'function td:map/apply_random/gate/{level}.out\n')
            file.write(f'data modify entity @s data.gate_{axis} '
                       'merge from entity @e[sort=random,limit=1,tag=gate_lookup] data\n')
            file.write('kill @e[tag=gate_lookup]\n')


def generate_gate_lookup(level: str, gates: list[str]):
    with create_path_and_open(apply_gate_root / f"{level}.out.mcfunction") as file:
        file.write("# AUTO-GENERATED\n")
        for gate in gates:
            file.write(
                f'summon marker ~ ~ ~ {{Tags: [gate_lookup], data: {{open: {{name: "td:gates/{level}/{gate}/open"}}, closed: {{name: "td:gates/{level}/{gate}/closed"}}}}}}\n')


def generate_gates():
    total_gates = 0

    levels = os.listdir(gates_root)
    generate_gate_level_lookup(levels)
    for level in levels:
        gates = os.listdir(gates_root / level)
        total_gates += len(gates)
        generate_gate_lookup(level, gates)

    print_status(total_gates, "gates")


def main():
    generate_tiles()
    generate_gates()


if __name__ == "__main__":
    main()
