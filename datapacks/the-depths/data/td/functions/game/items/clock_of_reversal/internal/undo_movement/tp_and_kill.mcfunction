tp @a[tag=undo_movement_current,limit=1] @s
execute unless entity @e[tag=recorded_movement,scores={recorded_movement=0..}] at @s run function td:game/items/clock_of_reversal/internal/undo_movement/land
kill @s
