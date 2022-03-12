# Updates settings and shows them again if anything changed.

tag @s add setting_changed
tag @s[scores={map_width=0,map_height=0,generation_speed=0}] remove setting_changed

scoreboard players operation map_width settings += @s map_width
scoreboard players set @s map_width 0

scoreboard players operation map_height settings += @s map_height
scoreboard players set @s map_height 0

scoreboard players operation generation_speed settings += @s generation_speed
scoreboard players set @s generation_speed 0

scoreboard players operation map_width settings > min_size const
scoreboard players operation map_width settings < max_size const
scoreboard players operation map_height settings > min_size const
scoreboard players operation map_height settings < max_size const
scoreboard players operation generation_speed settings > min_generation_speed const
scoreboard players operation generation_speed settings < max_generation_speed const

execute as @s[tag=setting_changed] as @a run function td:settings/show
tag @s remove setting_changed
