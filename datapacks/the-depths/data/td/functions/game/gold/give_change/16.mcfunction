loot give @s loot td:gold/16
scoreboard players operation @s debt += gold_chunk_value const
execute as @s[scores={debt=..-16}] run function td:game/gold/give_change/16
