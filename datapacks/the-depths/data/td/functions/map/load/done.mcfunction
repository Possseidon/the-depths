# Use the gate markers to generate all gates at once.
execute as @e[tag=gate_marker,tag=gate_x] at @s run function td:map/load/gate_x
execute as @e[tag=gate_marker,tag=gate_z] at @s run function td:map/load/gate_z

fill -192 64 -192 -65 64 -65 minecraft:barrier
tellraw @a "§eGeneration done!"
