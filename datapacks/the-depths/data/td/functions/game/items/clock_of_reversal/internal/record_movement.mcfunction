scoreboard players add @e[tag=recorded_movement] recorded_movement 1
execute as @a[team=player] run function td:game/items/clock_of_reversal/internal/record_movement/new_marker
