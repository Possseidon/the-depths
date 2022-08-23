execute store result score @s item_count run clear @s minecraft:gold_nugget
scoreboard players operation @s item_count *= gold_nugget_value const
scoreboard players operation @s debt -= @s item_count
