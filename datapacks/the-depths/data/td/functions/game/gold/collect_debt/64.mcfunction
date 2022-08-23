execute store result score @s item_count run clear @s minecraft:gold_block
scoreboard players operation @s item_count *= gold_block_value const
scoreboard players operation @s debt -= @s item_count
