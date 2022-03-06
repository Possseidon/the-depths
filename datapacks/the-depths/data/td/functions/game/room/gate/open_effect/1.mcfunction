execute as @s[tag=gate_x] run playsound block.moss.break block @a ~ ~17 ~7 2 0.5
execute as @s[tag=gate_z] run playsound block.moss.break block @a ~7 ~17 ~ 2 0.5

execute as @s[tag=gate_x] run particle block minecraft:vine ~ ~17 ~7 0 1.5 3 0.1 300
execute as @s[tag=gate_z] run particle block minecraft:vine ~7 ~17 ~ 3 1.5 0 0.1 300
