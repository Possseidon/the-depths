execute store result score @s item_count run clear @s minecraft:raw_gold
scoreboard players operation @s item_count *= gold_chunk_value const
scoreboard players operation @s debt -= @s item_count
