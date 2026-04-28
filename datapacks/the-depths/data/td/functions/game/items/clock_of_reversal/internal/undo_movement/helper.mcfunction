tag @s add undo_movement_current
execute as @e[tag=recorded_movement,scores={recorded_movement=-1}] if score @s linked_uuid0 = @e[tag=undo_movement_current,limit=1] uuid0 if score @s linked_uuid1 = @e[tag=undo_movement_current,limit=1] uuid1 if score @s linked_uuid2 = @e[tag=undo_movement_current,limit=1] uuid2 if score @s linked_uuid3 = @e[tag=undo_movement_current,limit=1] uuid3 run function td:game/items/clock_of_reversal/internal/undo_movement/tp_and_kill
tag @s remove undo_movement_current
