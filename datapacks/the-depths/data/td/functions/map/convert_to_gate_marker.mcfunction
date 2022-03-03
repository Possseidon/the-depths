# Convert gate markers into proper gate markers in the actual dungeon map.
#
# Execute as: tag=gate

tag @s remove gate
tag @s add gate_marker

data modify entity @s Pos set from entity @s data.Pos
execute as @s[tag=gate_x] at @s run function td:map/prepare/gate_x
execute as @s[tag=gate_z] at @s run function td:map/prepare/gate_z

execute as @s[tag=gate_marker] run function td:map/apply_random/gate.out
