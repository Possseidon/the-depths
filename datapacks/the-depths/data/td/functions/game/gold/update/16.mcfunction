execute store result score @s item_count run clear @s minecraft:raw_gold 0
scoreboard players operation @s item_count *= gold_chunk_value const
scoreboard players operation @s gold += @s item_count
