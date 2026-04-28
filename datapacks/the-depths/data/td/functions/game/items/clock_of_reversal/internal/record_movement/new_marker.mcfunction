summon marker ~ ~ ~ {Tags: [recorded_movement, unlinked]}
execute store result score @e[tag=unlinked,limit=1] linked_uuid0 run scoreboard players get @s uuid0
execute store result score @e[tag=unlinked,limit=1] linked_uuid1 run scoreboard players get @s uuid1
execute store result score @e[tag=unlinked,limit=1] linked_uuid2 run scoreboard players get @s uuid2
execute store result score @e[tag=unlinked,limit=1] linked_uuid3 run scoreboard players get @s uuid3
scoreboard players set @e[tag=unlinked,limit=1] recorded_movement 0
tp @e[tag=unlinked,limit=1] @s
tag @e[tag=unlinked,limit=1] remove unlinked
