# Updates the tile statistics scoreboard.

execute store result score §bᴄᴜʀᴠᴇ tile_stats if entity @e[tag=grid,tag=curve]
execute store result score §bꜱᴛʀᴀɪɢʜᴛ tile_stats if entity @e[tag=grid,tag=straight]
execute store result score §bʟᴏɴɢ-ꜱᴛʀᴀɪɢʜᴛ tile_stats if entity @e[tag=grid,tag=straight_straight]
execute store result score §bᴅᴇᴀᴅ-ᴇɴᴅ tile_stats if entity @e[tag=grid,tag=dead_end]
execute store result score §bꜱᴘʟɪᴛ tile_stats if entity @e[tag=grid,tag=split]
execute store result score §bᴄʀᴏꜱꜱ tile_stats if entity @e[tag=grid,tag=cross]
