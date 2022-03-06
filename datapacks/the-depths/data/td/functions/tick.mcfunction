# Runs the game tick function if there are any players in the player team.

execute if entity @a[team=player,limit=1] run function td:game/tick
