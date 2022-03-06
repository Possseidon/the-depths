# Triggers the room open effect depending on the layer of the gate.
#
# Execute as: tag=gate_marker
# Execute at: @s

execute as @s[nbt={data:{layer_index:1b}}] run function td:game/room/gate/open_effect/1
execute as @s[nbt={data:{layer_index:2b}}] run function td:game/room/gate/open_effect/2
execute as @s[nbt={data:{layer_index:3b}}] run function td:game/room/gate/open_effect/3
execute as @s[nbt={data:{layer_index:4b}}] run function td:game/room/gate/open_effect/4
execute as @s[nbt={data:{layer_index:5b}}] run function td:game/room/gate/open_effect/5
