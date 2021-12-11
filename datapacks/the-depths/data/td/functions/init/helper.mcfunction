# Prepares the world when the map is first loaded.

# Make sure the map area stays loaded without relying on spawn-chunks
forceload add -192 -192 -64 -64

# Remove spawn platform
fill -8 -61 -8 24 -61 24 minecraft:air

# Create map platform and barrier roof
fill -192 -64 -192 -65 -64 -65 minecraft:smooth_stone
fill -192 64 -192 -65 64 -65 minecraft:barrier

# Create spawn area
summon marker -64 32 -64 {Tags: [init_spawn], data: {tile: {name: "td:spawn/maze_generation"}}}
summon marker -48 32 -56 {Tags: [init_spawn], data: {tile: {name: "td:spawn/tile_design/1x1"}}}
summon marker -16 32 -56 {Tags: [init_spawn], data: {tile: {name: "td:spawn/tile_design/2x2"}}}
summon marker -8 32 -16 {Tags: [init_spawn], data: {tile: {name: "td:spawn/tile_design/2x1"}}}

execute as @e[tag=init_spawn] at @s run function td:init/load_structure
kill @e[tag=init_spawn]

# Set world spawn (luckily gets executed early enough in single player, spawning the player here)
setworldspawn -56 33 -56

# Initialize settings
data modify storage td:settings generation_speed set value 4b

# Make sure this is only executed once
data modify storage td:settings initialized set value 1b
