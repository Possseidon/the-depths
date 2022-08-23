loot give @s loot td:gold/256
scoreboard players operation @s debt += gold_cluster_value const
execute as @s[scores={debt=..-256}] run function td:game/gold/give_change/256
