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
team add ready "ʀᴇᴀᴅʏ"
team modify ready color yellow
team modify ready friendlyFire false

# The player is actively playing the game.
team add player "ᴘʟᴀʏᴇʀ"
team modify player color green

# The player is merely spectating, presumably in spectator mode.
team add spectator "ꜱᴘᴇᴄᴛᴀᴛᴏʀ"
team modify spectator color gray

scoreboard objectives add var dummy

scoreboard objectives add const dummy
scoreboard players set normal_generation_speed const 8
scoreboard players set fast_generation_speed const 64
scoreboard players set hundreds_per_tick const 5
scoreboard players set ticks_per_second const 20
scoreboard players set min_size const 4
scoreboard players set max_size const 8
scoreboard players set min_generation_speed const 0
scoreboard players set max_generation_speed const 4

scoreboard objectives add tile_stats dummy "§e§n- ᴛɪʟᴇ ꜱᴛᴀᴛɪꜱᴛɪᴄꜱ -"

scoreboard objectives add settings dummy
scoreboard players set map_width settings 6
scoreboard players set map_height settings 5
scoreboard players set generation_speed settings 2

scoreboard objectives add map_width trigger
scoreboard objectives add map_height trigger
scoreboard objectives add generation_speed trigger

# A cooldown until a room is marked as cleared when the marked monster dies.
scoreboard objectives add monster_cooldown dummy

# Used to detect if all players are inside a tile, which happens when the value is zero.
scoreboard objectives add players_outside dummy

bossbar add td:clearing "§c§oᴄʟᴇᴀʀɪɴɢ ᴏʟᴅ ᴍᴀᴘ..."
bossbar set td:clearing color red

bossbar add td:darkness "§9§oᴀᴡᴀɪᴛɪɴɢ ᴅᴀʀᴋɴᴇꜱꜱ..."
bossbar set td:darkness color blue

bossbar add td:generation "§e§oɢᴇɴᴇʀᴀᴛɪɴɢ..."
bossbar set td:generation color yellow

bossbar add td:boss "ᴜɴɴᴀᴍᴇᴅ ʙᴏꜱꜱ"

# Make sure this is only executed once
#declare storage td:data
data modify storage td:data initialized set value 1b
