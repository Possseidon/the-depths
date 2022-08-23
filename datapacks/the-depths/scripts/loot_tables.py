import itertools
import os
from pathlib import Path
from typing import TextIO
import colors
import json

loot_tables_root = Path("data/td/loot_tables")


def create_path_and_open(filename: Path) -> TextIO:
    os.makedirs(filename.parent, exist_ok=True)
    return open(filename, "w")


def item_loot_table(item, *, functions=[]):
    return {
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": f"minecraft:{item}"
                    }
                ],
                "functions": functions
            }
        ]
    }


def potion_loot_table(style, effect):
    return item_loot_table(style, functions=[
        {
            "function": "minecraft:set_potion",
            "id": f"minecraft:{effect}"
        }
    ])


def generate_potions():
    potion_styles = [
        ("potion", ""),
        ("splash_potion", "_splash"),
        ("lingering_potion", "_lingering"),
    ]
    potion_ids = [
        "night_vision", "long_night_vision",
        "invisibility", "long_invisibility",
        "leaping", "strong_leaping", "long_leaping",
        "fire_resistance", "long_fire_resistance",
        "swiftness", "strong_swiftness", "long_swiftness",
        "slowness", "strong_slowness", "long_slowness",
        "water_breathing", "long_water_breathing",
        "healing", "strong_healing",
        "harming", "strong_harming",
        "poison", "strong_poison", "long_poison",
        "regeneration", "strong_regeneration", "long_regeneration",
        "strength", "strong_strength", "long_strength",
        "weakness", "long_weakness",
        "luck",
        "turtle_master", "strong_turtle_master", "long_turtle_master",
        "slow_falling", "long_slow_falling",
    ]
    count = 0
    for potion, (style, style_filename) in itertools.product(potion_ids, potion_styles):
        with create_path_and_open(loot_tables_root / f"potions/{potion}{style_filename}.out.json") as f:
            f.write(json.dumps(potion_loot_table(style, potion), indent=2))
        count += 1
    print(
        f"Generated {colors.number}{count}{colors.reset} potion loot tables")


def main():
    generate_potions()


if __name__ == "__main__":
    main()
