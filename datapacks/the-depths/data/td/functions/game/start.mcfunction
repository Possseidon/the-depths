# Moves any ready players into the player team and teleports them to the spawn.

bossbar set td:generation players

team join player @a[team=ready]
advancement grant @a[team=player] only td:progression/root

execute at @e[tag=spawn_marker] run tp @a[team=player] ~ ~ ~ facing entity @e[tag=spawn_look_at,limit=1]
