# Monsters

## General Notes

### Attributes

- **HP**: generic.max_health
- **Damage**: generic.attack_damage
- **Speed**: generic.movement_speed

### Neutral Mobs

Neutral mobs (e.g. wolfs) will target a random player by setting `AngryAt` to a random players UUID.

## Level 1 (Valley)

| Name            |   HP | Damage | Speed | Entity    | Drops | Notes                                                       |
| --------------- | ---: | -----: | ----: | --------- | ----- | ----------------------------------------------------------- |
| Ogre            |      |        |       | zombie    |       | Wears green leather armor and attacks with a club (stick).  |
| Wolf            |      |        |       | wolf      |       |                                                             |
| Bee             |      |        |       | bee       |       |                                                             |
| Small Slime     |      |        |       | slime     |       | `{Size: 0}`                                                 |
| Medium Slime    |      |        |       | slime     |       | `{Size: 1}` Splits into 2-4 Small Slimes                    |
| Big Slime       |      |        |       | slime     |       | `{Size: 3}` Splits into 2-4 Medium Slimes                   |
| Red Mooshroom   |      |        |       | mooshroom |       | Spawns in red mushroom areas, ridden by invisible zombie.   |
| Brown Mooshroom |      |        |       | mooshroom |       | Spawns in brown mushroom areas, ridden by invisible zombie. |

## Level 2 (Library)

| Name      |   HP | Damage | Speed | Entity     | Drops | Notes                        |
| --------- | ---: | -----: | ----: | ---------- | ----- | ---------------------------- |
| Librarian |      |        |       | vindicator |       | Carrying a book in his hand. |
| Pillager  |      |        |       | pillager   |       |                              |
| Crawler   |      |        |       | spider     |       | Has a bookshelf on its back. |
| Husk      |      |        |       | husk       |       | Spawns in sandy areas.       |
| LLama     |      |        |       | llama      |       | Spawns in sandy areas.       |

## Level 3 (Caverns)

| Name        |   HP | Damage | Speed | Entity          | Drops | Notes                  |
| ----------- | ---: | -----: | ----: | --------------- | ----- | ---------------------- |
| Miner       |      |        |       | zombie_villager |       | Holding a pickaxe.     |
| Creeper     |      |        |       | creeper         |       |                        |
| Cave Spider |      |        |       | cave_spider     |       |                        |
| Drowned     |      |        |       | drowned         |       | Spawns in water pools. |
| Pufferfish  |      |        |       | pufferfish      |       | Spawns in water pools. |

## Level 4 (Dungeon)

| Name       |   HP | Damage | Speed | Entity     | Drops | Notes                 |
| ---------- | ---: | -----: | ----: | ---------- | ----- | --------------------- |
| Knight     |      |        |       | skeleton   |       | Holding Sword         |
| Archer     |      |        |       | skeleton   |       | Holding Bow           |
| Witch      |      |        |       | witch      |       |                       |
| Silverfish |      |        |       | silverfish |       |                       |
| Stray      |      |        |       | stray      |       | Spawns in cold areas. |
| Polar Bear |      |        |       | polar_bear |       | Spawns in cold areas. |

## Level 5 (Hell)

| Name              |   HP | Damage | Speed | Entity           | Drops | Notes                                          |
| ----------------- | ---: | -----: | ----: | ---------------- | ----- | ---------------------------------------------- |
| Piglin            |      |        |       | piglin           |       |                                                |
| Piglin Brute      |      |        |       | piglin_brute     |       |                                                |
| Zombiefied Piglin |      |        |       | zombified_piglin |       |                                                |
| Hoglin            |      |        |       | hoglin           |       |                                                |
| Zoglin            |      |        |       | hoglin           |       |                                                |
| Small Magma Cube  |      |        |       | magma_cube       |       | `{Size: 0}`                                    |
| Medium Magma Cube |      |        |       | magma_cube       |       | `{Size: 1}` Splits into 2-4 Small Magma Cubes  |
| Big Magma Cube    |      |        |       | magma_cube       |       | `{Size: 3}` Splits into 2-4 Medium Magma Cubes |
| Blaze             |      |        |       | blaze            |       | Spawns in nether fortress areas.               |
| Wither Skeleton   |      |        |       | wither_skeleton  |       | Spawns in nether fortress areas.               |
