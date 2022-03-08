# Marks a room as cleared once all monsters have been slain and the monster cooldown has expired.
#
# Execute as: tag=tile_marker

execute if score monster_cooldown var matches 0.. run scoreboard players remove monster_cooldown var 1
scoreboard players operation monster_cooldown var > @e[tag=monster] monster_cooldown
execute if score monster_cooldown var matches -1 at @s run function td:game/room/clear
