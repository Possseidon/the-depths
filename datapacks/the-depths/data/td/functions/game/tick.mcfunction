# Runs the entire game.

# Update rooms.
execute unless entity @e[tag=tile_marker,tag=running,limit=1] run function td:game/room/check_entered
execute as @e[tag=tile_marker,tag=running,tag=!checking_monsters,limit=1] run function td:game/room/check_cleared

execute as @a[team=player] run function td:game/gold/update
execute as @e[tag=!has_uuid] run function td:game/uuid/update

function td:game/items/update
