# Summons all valid transform lookups for a 2x2 tile.
#
# Execute as: tag=tile_marker, wide, long

execute as @s[tag=transform_pos_x_pos_z] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: NONE, mirror: NONE}}
execute as @s[tag=transform_pos_z_neg_x] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: CLOCKWISE_90, mirror: NONE, posX: 30}}
execute as @s[tag=transform_neg_x_neg_z] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: CLOCKWISE_180, mirror: NONE, posX: 30, posZ: 30}}
execute as @s[tag=transform_neg_z_pos_x] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: COUNTERCLOCKWISE_90, mirror: NONE, posZ: 30}}
execute as @s[tag=transform_pos_x_neg_z] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: NONE, mirror: LEFT_RIGHT, posZ: 30}}
execute as @s[tag=transform_pos_z_pos_x] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: CLOCKWISE_90, mirror: LEFT_RIGHT}}
execute as @s[tag=transform_neg_x_pos_z] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: CLOCKWISE_180, mirror: LEFT_RIGHT, posX: 30}}
execute as @s[tag=transform_neg_z_neg_x] run summon marker ~ ~ ~ {Tags: [transform_lookup], data: {rotation: COUNTERCLOCKWISE_90, mirror: LEFT_RIGHT, posX: 30, posZ: 30}}
