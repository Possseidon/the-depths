execute as @s[tag=straight_0] positioned ~1 ~ ~ if entity @e[tag=grid,tag=straight_0,distance=..0.1] run tag @s add straight_straight_0
execute as @s[tag=straight_straight_0] positioned ~1 ~ ~ run kill @e[tag=grid,distance=..0.1]
execute as @s[tag=straight_straight_0] positioned ~0.5 ~ ~ run kill @e[tag=gate,distance=..0.1]
tag @s[tag=straight_straight_0] remove straight_0

execute as @s[tag=straight_90] positioned ~ ~ ~1 if entity @e[tag=grid,tag=straight_90,distance=..0.1] run tag @s add straight_straight_90
execute as @s[tag=straight_straight_90] positioned ~ ~ ~1 run kill @e[tag=grid,distance=..0.1]
execute as @s[tag=straight_straight_90] positioned ~ ~ ~0.5 run kill @e[tag=gate,distance=..0.1]
tag @s[tag=straight_straight_90] remove straight_90

tag @s remove try_double
execute as @e[sort=random,limit=1,tag=grid,tag=try_double] at @s run function td:maze/try_convert_to_double_tile
