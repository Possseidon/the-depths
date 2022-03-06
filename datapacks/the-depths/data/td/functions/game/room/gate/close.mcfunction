# Closes a gate, including close effects, and marks it as no longer open.
#
# Execute as: tag=gate,tag=open
# Execute at: @s

tag @s remove open

function td:map/load/gate/closed
function td:game/room/gate/close_effect
