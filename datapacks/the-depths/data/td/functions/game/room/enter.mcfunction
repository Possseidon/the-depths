# Triggers enter logic on the room.
#
# execute as: tag=tile_marker
# execute at: @s

# Mark it as running and check for monsters after they had a chance to spawn.
tag @s add running
tag @s add checking_monsters

schedule function td:game/room/entered_check_for_monsters 2t

# Trigger redstone blocks for entered rooms.
execute as @s[tag=!wide,tag=!long] run fill ~ ~ ~ ~14 ~23 ~14 minecraft:redstone_block replace minecraft:waxed_oxidized_cut_copper
execute as @s[tag=wide,tag=!long] run fill ~ ~ ~ ~30 ~23 ~14 minecraft:redstone_block replace minecraft:waxed_oxidized_cut_copper
execute as @s[tag=!wide,tag=long] run fill ~ ~ ~ ~14 ~23 ~30 minecraft:redstone_block replace minecraft:waxed_oxidized_cut_copper
execute as @s[tag=wide,tag=long] run fill ~ ~ ~ ~30 ~23 ~30 minecraft:redstone_block replace minecraft:waxed_oxidized_cut_copper

execute as @s[tag=spawn] run function td:game/room/enter/spawn
