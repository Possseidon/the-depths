# Shows interactive settings in the chat.

scoreboard players enable @s map_width
scoreboard players enable @s map_height
scoreboard players enable @s generation_speed

# generation_ticks = levels * width * height / speed
scoreboard players set generation_ticks var 5
scoreboard players operation generation_ticks var *= map_width settings
scoreboard players operation generation_ticks var *= map_height settings

# Boss tiles take up 3 less tiles per level.
scoreboard players remove generation_ticks var 15
# Double tiles as well, but those cannot be accounted for yet.

execute if score generation_speed settings matches 2 run scoreboard players operation generation_ticks var /= normal_generation_speed const
execute if score generation_speed settings matches 3 run scoreboard players operation generation_ticks var /= fast_generation_speed const
execute if score generation_speed settings matches 4 run scoreboard players set generation_ticks var 0
scoreboard players operation generation_sec var = generation_ticks var
scoreboard players operation generation_sec var /= ticks_per_second const
scoreboard players operation generation_hundreds var = generation_ticks var
scoreboard players operation generation_hundreds var %= ticks_per_second const
scoreboard players operation generation_hundreds var *= hundreds_per_tick const
execute if score generation_speed settings matches 0 run scoreboard players set generation_ticks var -1

function td:settings/show.out
