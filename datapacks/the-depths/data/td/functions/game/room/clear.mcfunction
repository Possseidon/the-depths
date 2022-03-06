# Marks a room as cleared, opening all gates and triggering clear room redstone blocks.
#
# Execute as: tag=tile_marker
# Execute at: @s

execute as @s[tag=!wide,tag=!long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=!open,dx=15.2,dy=0.2,dz=15.2] at @s run function td:game/room/gate/open
execute as @s[tag=wide,tag=!long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=!open,dx=31.2,dy=0.2,dz=15.2] at @s run function td:game/room/gate/open
execute as @s[tag=!wide,tag=long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=!open,dx=15.2,dy=0.2,dz=31.2] at @s run function td:game/room/gate/open
execute as @s[tag=wide,tag=long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=!open,dx=31.2,dy=0.2,dz=31.2] at @s run function td:game/room/gate/open

execute as @s[tag=!wide,tag=!long] run fill ~ ~ ~ ~14 ~23 ~14 minecraft:redstone_block replace minecraft:waxed_oxidized_copper
execute as @s[tag=wide,tag=!long] run fill ~ ~ ~ ~30 ~23 ~14 minecraft:redstone_block replace minecraft:waxed_oxidized_copper
execute as @s[tag=!wide,tag=long] run fill ~ ~ ~ ~14 ~23 ~30 minecraft:redstone_block replace minecraft:waxed_oxidized_copper
execute as @s[tag=wide,tag=long] run fill ~ ~ ~ ~30 ~23 ~30 minecraft:redstone_block replace minecraft:waxed_oxidized_copper

tag @s remove checking_monsters
tag @s remove running
tag @s add cleared
