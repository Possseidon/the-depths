# Kills grid markers outside the map size and tags the correct markers with can_big.
#
# Execute as: grid_post_process

tag @e[tag=grid] add kill

scoreboard players set count var 9
scoreboard players operation count var -= map_width settings
execute at @s run function td:maze/summon/grid/post_process/move/x

scoreboard players set count var 9
scoreboard players operation count var -= map_height settings
execute at @s run function td:maze/summon/grid/post_process/move/z

scoreboard players reset count var

execute at @s positioned ~ ~-0.5 ~ run tag @e[tag=grid,dx=7,dy=0,dz=7] add can_big
execute at @s positioned ~ ~-0.5 ~ run tag @e[tag=grid,dx=8,dy=0,dz=8] remove kill

kill @e[tag=grid,tag=kill]
kill @s
