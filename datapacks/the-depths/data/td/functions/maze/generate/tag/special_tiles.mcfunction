# Tags special tiles for maze generation.
#
# Input: A grid.
#
# Output: The same grid with the following additional tags:
# - default
# - spawn
# - exit
# - special
# - boss, boss_helper, boss_or_helper

# Add default to all tiles and remove it as new special tiles are added.
tag @e[tag=grid] add default

# Add spawn tag either below the exit of the previous layer or random.
execute at @e[tag=grid_success,tag=previous_layer,tag=exit] positioned ~ ~-1 ~ run tag @e[tag=grid,distance=..0.1] add spawn
execute unless entity @e[tag=grid,tag=spawn] run tag @e[sort=random,limit=1,tag=grid,tag=default] add spawn
tag @e[tag=grid,tag=spawn] remove default

# Update can_boss, so that the boss tile doesn't spawn on top.
execute at @e[tag=grid,tag=spawn] positioned ~-1 ~ ~ run tag @e[tag=grid,distance=..0.1] remove can_big
execute at @e[tag=grid,tag=spawn] positioned ~ ~ ~-1 run tag @e[tag=grid,distance=..0.1] remove can_big
execute at @e[tag=grid,tag=spawn] positioned ~-1 ~ ~-1 run tag @e[tag=grid,distance=..0.1] remove can_big

# Add boss tag at a can_boss tile and also set boss_helper and boss_or_helper.
tag @e[sort=random,limit=1,tag=grid,tag=default,tag=can_big] add boss

execute at @e[tag=grid,tag=boss] positioned ~1 ~ ~ run tag @e[tag=grid,distance=..0.1] add boss_helper
execute at @e[tag=grid,tag=boss] positioned ~ ~ ~1 run tag @e[tag=grid,distance=..0.1] add boss_helper
execute at @e[tag=grid,tag=boss] positioned ~1 ~ ~1 run tag @e[tag=grid,distance=..0.1] add boss_helper

tag @e[tag=grid,tag=boss] add boss_or_helper
tag @e[tag=grid,tag=boss_helper] add boss_or_helper

tag @e[tag=grid,tag=boss_or_helper] remove default

# Add exit tag.
tag @e[sort=random,limit=1,tag=grid,tag=default] add exit
tag @e[tag=grid,tag=exit] remove default

# Add special tag.
tag @e[sort=random,limit=1,tag=grid,tag=default] add special
tag @e[tag=grid,tag=special] remove default
