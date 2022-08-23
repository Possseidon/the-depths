loot give @s loot td:gold/4
scoreboard players operation @s debt += gold_bar_value const
execute as @s[scores={debt=..-4}] run function td:game/gold/give_change/4
