tag @e[tag=grid,tag=cursor] add passed

execute at @e[tag=grid,tag=cursor,tag=default] run tag @e[tag=grid,tag=!passed,distance=..1.1,sort=random,limit=1] add next_move

execute unless entity @e[tag=grid,tag=next_move] run function td:maze/generate/backtrack
execute if entity @e[tag=grid,tag=next_move] run function td:maze/generate/move_cursor
