execute store result score @s item_count run clear @s minecraft:raw_gold_block
scoreboard players operation @s item_count *= gold_cluster_value const
scoreboard players operation @s debt -= @s item_count
