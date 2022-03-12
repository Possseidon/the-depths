# Runs ticks functions if the correct conditions are met.

# Runs the game tick function if there are any players in the player team.
execute if entity @a[team=player,limit=1] run function td:game/tick

# Update settings triggers.
execute as @a run function td:settings/tick
