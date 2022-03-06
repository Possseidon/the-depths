# Checks if there are any monsters and either closes or clears the room.
# Meant to be scheduled 1 redstone tick after the room has been entered, so that monsters had a chance to spawn.

execute if entity @e[tag=monster,limit=1] as @e[tag=tile_marker,tag=checking_monsters] at @s run function td:game/room/close
execute unless entity @e[tag=monster,limit=1] as @e[tag=tile_marker,tag=checking_monsters] at @s run function td:game/room/clear
