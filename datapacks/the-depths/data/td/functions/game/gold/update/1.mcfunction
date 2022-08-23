execute store result score @s item_count run clear @s minecraft:gold_nugget 0
scoreboard players operation @s item_count *= gold_nugget_value const
scoreboard players operation @s gold += @s item_count
