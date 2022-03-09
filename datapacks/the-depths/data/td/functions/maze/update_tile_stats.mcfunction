# Updates the tile statistics scoreboard.

execute store result score §9ᴄᴜʀᴠᴇ tile_stats if entity @e[tag=grid,tag=curve]
execute store result score §9ꜱᴛʀᴀɪɢʜᴛ tile_stats if entity @e[tag=grid,tag=straight]
execute store result score §9ʟᴏɴɢ-ꜱᴛʀᴀɪɢʜᴛ tile_stats if entity @e[tag=grid,tag=straight_straight]
execute store result score §9ᴅᴇᴀᴅ-ᴇɴᴅ tile_stats if entity @e[tag=grid,tag=dead_end]
execute store result score §9ꜱᴘʟɪᴛ tile_stats if entity @e[tag=grid,tag=split]
execute store result score §9ᴄʀᴏꜱꜱ tile_stats if entity @e[tag=grid,tag=cross]
