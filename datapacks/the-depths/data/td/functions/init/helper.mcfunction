# Prepares the world when the map is first loaded.

# Make sure the map area stays loaded without relying on spawn-chunks
forceload add -192 -192 -64 -64

# Remove spawn platform
fill -8 -61 -8 24 -61 24 minecraft:air

# Encase the map area.
fill -192 64 -192 -65 64 -65 minecraft:tinted_glass
fill -192 -64 -193 -65 63 -193 minecraft:tinted_glass
fill -193 -64 -192 -193 63 -65 minecraft:tinted_glass
fill -192 -64 -64 -65 63 -64 minecraft:tinted_glass
fill -64 -64 -192 -64 63 -65 minecraft:tinted_glass

# Create spawn area
summon marker -64 32 -64 {Tags: [init_spawn], data: {tile: {name: "td:spawn/maze_generation"}}}
summon marker -48 32 -56 {Tags: [init_spawn], data: {tile: {name: "td:spawn/tile_design/1x1"}}}
summon marker -16 32 -56 {Tags: [init_spawn], data: {tile: {name: "td:spawn/tile_design/2x2"}}}
summon marker -8 32 -16 {Tags: [init_spawn], data: {tile: {name: "td:spawn/tile_design/2x1"}}}

execute as @e[tag=init_spawn] at @s run function td:init/load_structure

# Set world spawn (luckily gets executed early enough in single player, spawning the player here)
setworldspawn -56 33 -56

# Teams for the state of players.

# The player is ready to play the game and will be moved into the player team when the game starts.
team add ready "Ready"
team modify ready color yellow
team modify ready friendlyFire false

# The player is actively playing the game.
team add player "Player"
team modify player color green

# The player is merely spectating, presumably in spectator mode.
team add spectator "Spectator"
team modify spectator color gray

scoreboard objectives add var dummy
scoreboard objectives add const dummy

# A cooldown until a room is marked as cleared when the marked monster dies.
scoreboard objectives add monster_cooldown dummy

# Used to detect if all players are inside a tile, which happens when the value is zero.
scoreboard objectives add players_outside dummy

bossbar add td:darkness "§9§oᴀᴡᴀɪᴛɪɴɢ ᴅᴀʀᴋɴᴇꜱꜱ..."
bossbar set td:darkness color blue

bossbar add td:generation "§e§oɢᴇɴᴇʀᴀᴛɪɴɢ..."
bossbar set td:generation color yellow

bossbar add td:boss "ᴜɴɴᴀᴍᴇᴅ ʙᴏꜱꜱ"

# Initialize settings
data modify storage td:settings generation_speed set value 2b

# Make sure this is only executed once
data modify storage td:settings initialized set value 1b
