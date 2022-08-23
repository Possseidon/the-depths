execute store result score @s item_count run clear @s minecraft:gold_ingot
scoreboard players operation @s item_count *= gold_bar_value const
scoreboard players operation @s debt -= @s item_count
