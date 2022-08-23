loot give @s loot td:gold/1
scoreboard players operation @s debt += gold_nugget_value const
execute as @s[scores={debt=..-1}] run function td:game/gold/give_change/1
