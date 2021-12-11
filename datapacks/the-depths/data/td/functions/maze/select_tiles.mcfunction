tag @e[tag=grid] add default

execute at @e[tag=grid_success,tag=previous_layer,tag=exit] positioned ~ ~-1 ~ run tag @e[tag=grid,distance=..0.1] add spawn
execute unless entity @e[tag=grid,tag=spawn] run tag @e[sort=random,limit=1,tag=grid,tag=default] add spawn
tag @e[tag=grid,tag=spawn] remove default

execute at @e[tag=grid,tag=spawn] positioned ~-1 ~ ~ run tag @e[tag=grid,distance=..0.1] remove can_big
execute at @e[tag=grid,tag=spawn] positioned ~ ~ ~-1 run tag @e[tag=grid,distance=..0.1] remove can_big
execute at @e[tag=grid,tag=spawn] positioned ~-1 ~ ~-1 run tag @e[tag=grid,distance=..0.1] remove can_big

tag @e[sort=random,limit=1,tag=grid,tag=default,tag=can_big] add boss
tag @e[tag=grid,tag=boss] remove default

execute at @e[tag=grid,tag=boss] positioned ~1 ~ ~ run tag @e[tag=grid,distance=..0.1] add boss_helper
execute at @e[tag=grid,tag=boss] positioned ~ ~ ~1 run tag @e[tag=grid,distance=..0.1] add boss_helper
execute at @e[tag=grid,tag=boss] positioned ~1 ~ ~1 run tag @e[tag=grid,distance=..0.1] add boss_helper
tag @e[tag=grid,tag=boss_helper] remove default

tag @e[sort=random,limit=1,tag=grid,tag=default] add exit
tag @e[tag=grid,tag=exit] remove default

tag @e[sort=random,limit=1,tag=grid,tag=default] add special
tag @e[tag=grid,tag=special] remove default

tag @e[sort=random,limit=1,tag=grid,tag=default] add cursor
