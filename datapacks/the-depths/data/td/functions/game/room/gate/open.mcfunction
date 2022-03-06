# Opens a gate, including open effects, and marks it as open.
#
# Execute as: tag=gate,tag=!open
# Execute at: @s

tag @s add open

function td:map/load/gate/open
function td:game/room/gate/open_effect
