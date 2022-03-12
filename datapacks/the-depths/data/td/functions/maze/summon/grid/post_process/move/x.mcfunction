# Moves the marker along the x axis until count reaches zero.

tp ~-1 ~ ~
scoreboard players remove count var 1
execute if score count var matches 1.. at @s run function td:maze/summon/grid/post_process/move/x
