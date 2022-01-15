# Adds tile and rotated-tile tags from gate positions.
#
# Input:
# - grid markers with gate_pos/neg_x_z tags
#
# Output:
# - grid markers with additional tile tags, rotated-tile tags and wide/long tags for boss tiles

tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=!gate_pos_z,tag=!gate_neg_z] add dead_end
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=!gate_pos_z,tag=!gate_neg_z] add dead_end_0
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=!gate_neg_z] add dead_end
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=!gate_neg_z] add dead_end_180
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=!gate_neg_z] add straight
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=!gate_neg_z] add straight_0
tag @e[tag=grid,tag=!gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add dead_end
tag @e[tag=grid,tag=!gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add dead_end_90
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add curve
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add curve_0
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add curve
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add curve_90
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add split
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=!gate_neg_z] add split_0
tag @e[tag=grid,tag=!gate_pos_x,tag=!gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add dead_end
tag @e[tag=grid,tag=!gate_pos_x,tag=!gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add dead_end_270
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add curve
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add curve_270
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add curve
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add curve_180
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add split
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=!gate_pos_z,tag=gate_neg_z] add split_180
tag @e[tag=grid,tag=!gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add straight
tag @e[tag=grid,tag=!gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add straight_90
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add split
tag @e[tag=grid,tag=gate_pos_x,tag=!gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add split_90
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add split
tag @e[tag=grid,tag=!gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add split_270
tag @e[tag=grid,tag=gate_pos_x,tag=gate_neg_x,tag=gate_pos_z,tag=gate_neg_z] add cross

tag @e[tag=grid,tag=spawn] remove dead_end
tag @e[tag=grid,tag=exit] remove dead_end
tag @e[tag=grid,tag=special] remove dead_end
tag @e[tag=grid,tag=boss] remove dead_end

tag @e[tag=grid,tag=boss] add wide
tag @e[tag=grid,tag=boss] add long
