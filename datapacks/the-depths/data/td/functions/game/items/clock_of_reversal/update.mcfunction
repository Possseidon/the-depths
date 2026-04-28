execute store success storage td:data clock_of_reversal byte 1 run clear @a[team=player] minecraft:clock{display:{Name:'"\\u00a7aClock of Reversal"'}} 0

execute if data storage td:data {clock_of_reversal: 1b} run function td:game/items/clock_of_reversal/internal/record_movement
execute if data storage td:data {clock_of_reversal: 0b} run function td:game/items/clock_of_reversal/internal/undo_movement

kill @e[tag=recorded_movement,scores={recorded_movement=20..}]
