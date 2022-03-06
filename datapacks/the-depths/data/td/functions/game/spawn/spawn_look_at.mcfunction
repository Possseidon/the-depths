# Spawns a marker for where the player should be looking at when spawned.
# The look direction is relative to the spawn marker, not the actual player position.

summon marker ~ ~ ~ {Tags: [spawn_look_at]}
