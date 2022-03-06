# Moves any ready players into the player team and teleports them to the spawn.

team join player @a[team=ready]
execute at @e[tag=spawn_marker] run tp @a[team=player] ~ ~ ~ facing entity @e[tag=spawn_look_at,limit=1]
