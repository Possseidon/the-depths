# Closes a room, assuming it contains monsters.
#
# Execute as: tag=tile_marker,tag=checking_monsters
# Execute at: @s

execute as @s[tag=!wide,tag=!long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=open,dx=15.2,dy=0.2,dz=15.2] at @s run function td:game/room/gate/close
execute as @s[tag=wide,tag=!long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=open,dx=31.2,dy=0.2,dz=15.2] at @s run function td:game/room/gate/close
execute as @s[tag=!wide,tag=long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=open,dx=15.2,dy=0.2,dz=31.2] at @s run function td:game/room/gate/close
execute as @s[tag=wide,tag=long] positioned ~-1.1 ~-0.1 ~-1.1 as @e[tag=gate_marker,tag=open,dx=31.2,dy=0.2,dz=31.2] at @s run function td:game/room/gate/close

tag @s remove checking_monsters
