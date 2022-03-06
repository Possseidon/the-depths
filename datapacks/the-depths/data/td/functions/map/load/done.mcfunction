# Closes all gates, regenerates the barrier roof and starts the game.

execute as @e[tag=gate_marker] at @s run function td:map/load/gate/closed

fill -192 64 -192 -65 64 -65 minecraft:barrier
tellraw @a "§eGeneration done!"

# Wait 1 redstone tick for the spawn marker.
schedule function td:game/start 2t
