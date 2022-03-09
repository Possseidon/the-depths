# Copies the tile's position and level to the gate.
#
# Execute as: tag=grid
# Execute at: potential gate relative positive x to the tile

data modify entity @e[tag=gate,distance=..0.1,limit=1] data.Pos set from entity @s data.Pos
data modify entity @e[tag=gate,distance=..0.1,limit=1] data.level set from entity @s data.level
