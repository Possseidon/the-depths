# Adds tile tags from rotated-tile tags for double tiles.
# Gets rid of stale tile tags and adds wide/long tag.

tag @e[tag=grid,tag=straight_straight_0] remove straight
tag @e[tag=grid,tag=straight_straight_0] add straight_straight
tag @e[tag=grid,tag=straight_straight_0] add wide

tag @e[tag=grid,tag=straight_straight_90] remove straight
tag @e[tag=grid,tag=straight_straight_90] add straight_straight
tag @e[tag=grid,tag=straight_straight_90] add long
