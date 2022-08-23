loot give @s loot td:gold/64
scoreboard players operation @s debt += gold_block_value const
execute as @s[scores={debt=..-64}] run function td:game/gold/give_change/64
