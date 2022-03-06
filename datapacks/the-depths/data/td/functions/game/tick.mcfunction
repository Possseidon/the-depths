# Runs the entire game.

# Update rooms.
execute unless entity @e[tag=tile_marker,tag=running,limit=1] run function td:game/room/check_entered
execute as @e[tag=tile_marker,tag=running,tag=!checking_monsters,limit=1] unless entity @e[tag=monster,limit=1] at @s run function td:game/room/clear
