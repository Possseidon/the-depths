# Replaces rotated-tile tags with transform tags.

# Rotation            | Mirror     | Orientation
# --------------------|------------|---------------------
# NONE                | NONE       | +x, +z -> +x, +z [0]
# CLOCKWISE_90        | NONE       | +x, +z -> +z, -x [1]
# CLOCKWISE_180       | NONE       | +x, +z -> -x, -z [2]
# COUNTERCLOCKWISE_90 | NONE       | +x, +z -> -z, +x [3]
# NONE                | LEFT_RIGHT | +x, +z -> +x, -z [4]
# CLOCKWISE_90        | LEFT_RIGHT | +x, +z -> +z, +x [5]
# CLOCKWISE_180       | LEFT_RIGHT | +x, +z -> -x, +z [6]
# COUNTERCLOCKWISE_90 | LEFT_RIGHT | +x, +z -> -z, -x [7]
# - [Duplicates] -----|------------|---------------------
# NONE                | FRONT_BACK | +x, +z -> -x, +z [6]
# CLOCKWISE_90        | FRONT_BACK | +x, +z -> -z, -x [7]
# CLOCKWISE_180       | FRONT_BACK | +x, +z -> +x, -z [4]
# COUNTERCLOCKWISE_90 | FRONT_BACK | +x, +z -> +z, +x [5]

tag @e[tag=grid,tag=dead_end_0] add transform_pos_x_pos_z
tag @e[tag=grid,tag=dead_end_0] add transform_pos_x_neg_z
tag @e[tag=grid,tag=dead_end_0] remove dead_end_0

tag @e[tag=grid,tag=dead_end_180] add transform_neg_x_pos_z
tag @e[tag=grid,tag=dead_end_180] add transform_neg_x_neg_z
tag @e[tag=grid,tag=dead_end_180] remove dead_end_180

tag @e[tag=grid,tag=straight_0] add transform_pos_x_pos_z
tag @e[tag=grid,tag=straight_0] add transform_pos_x_neg_z
tag @e[tag=grid,tag=straight_0] add transform_neg_x_pos_z
tag @e[tag=grid,tag=straight_0] add transform_neg_x_neg_z
tag @e[tag=grid,tag=straight_0] remove straight_0

tag @e[tag=grid,tag=dead_end_90] add transform_pos_z_neg_x
tag @e[tag=grid,tag=dead_end_90] add transform_pos_z_pos_x
tag @e[tag=grid,tag=dead_end_90] remove dead_end_90

tag @e[tag=grid,tag=curve_0] add transform_pos_x_pos_z
tag @e[tag=grid,tag=curve_0] add transform_pos_z_pos_x
tag @e[tag=grid,tag=curve_0] remove curve_0

tag @e[tag=grid,tag=curve_90] add transform_pos_z_neg_x
tag @e[tag=grid,tag=curve_90] add transform_neg_x_pos_z
tag @e[tag=grid,tag=curve_90] remove curve_90

tag @e[tag=grid,tag=split_0] add transform_pos_x_pos_z
tag @e[tag=grid,tag=split_0] add transform_neg_x_pos_z
tag @e[tag=grid,tag=split_0] remove split_0

tag @e[tag=grid,tag=dead_end_270] add transform_neg_z_neg_x
tag @e[tag=grid,tag=dead_end_270] add transform_neg_z_pos_x
tag @e[tag=grid,tag=dead_end_270] remove dead_end_270

tag @e[tag=grid,tag=curve_270] add transform_neg_z_pos_x
tag @e[tag=grid,tag=curve_270] add transform_pos_x_neg_z
tag @e[tag=grid,tag=curve_270] remove curve_270

tag @e[tag=grid,tag=curve_180] add transform_neg_x_neg_z
tag @e[tag=grid,tag=curve_180] add transform_neg_z_neg_x
tag @e[tag=grid,tag=curve_180] remove curve_180

tag @e[tag=grid,tag=split_180] add transform_pos_x_neg_z
tag @e[tag=grid,tag=split_180] add transform_neg_x_neg_z
tag @e[tag=grid,tag=split_180] remove split_180

tag @e[tag=grid,tag=straight_90] add transform_pos_z_neg_x
tag @e[tag=grid,tag=straight_90] add transform_pos_z_pos_x
tag @e[tag=grid,tag=straight_90] add transform_neg_z_neg_x
tag @e[tag=grid,tag=straight_90] add transform_neg_z_pos_x
tag @e[tag=grid,tag=straight_90] remove straight_90

tag @e[tag=grid,tag=split_90] add transform_neg_z_pos_x
tag @e[tag=grid,tag=split_90] add transform_pos_z_pos_x
tag @e[tag=grid,tag=split_90] remove split_90

tag @e[tag=grid,tag=split_270] add transform_neg_z_neg_x
tag @e[tag=grid,tag=split_270] add transform_pos_z_neg_x
tag @e[tag=grid,tag=split_270] remove split_270

tag @e[tag=grid,tag=cross] add transform_pos_x_pos_z
tag @e[tag=grid,tag=cross] add transform_pos_z_neg_x
tag @e[tag=grid,tag=cross] add transform_neg_x_neg_z
tag @e[tag=grid,tag=cross] add transform_neg_z_pos_x
tag @e[tag=grid,tag=cross] add transform_pos_x_neg_z
tag @e[tag=grid,tag=cross] add transform_pos_z_pos_x
tag @e[tag=grid,tag=cross] add transform_neg_x_pos_z
tag @e[tag=grid,tag=cross] add transform_neg_z_neg_x

# Double tiles

tag @e[tag=grid,tag=straight_straight_0] add transform_pos_x_pos_z
tag @e[tag=grid,tag=straight_straight_0] add transform_pos_x_neg_z
tag @e[tag=grid,tag=straight_straight_0] add transform_neg_x_pos_z
tag @e[tag=grid,tag=straight_straight_0] add transform_neg_x_neg_z
tag @e[tag=grid,tag=straight_straight_0] remove straight_straight_0

tag @e[tag=grid,tag=straight_straight_90] add transform_pos_z_neg_x
tag @e[tag=grid,tag=straight_straight_90] add transform_pos_z_pos_x
tag @e[tag=grid,tag=straight_straight_90] add transform_neg_z_neg_x
tag @e[tag=grid,tag=straight_straight_90] add transform_neg_z_pos_x
tag @e[tag=grid,tag=straight_straight_90] remove straight_straight_90

# Boss tiles

tag @e[tag=grid,tag=boss,tag=gate_pos_x_1] add transform_pos_x_neg_z
tag @e[tag=grid,tag=boss,tag=gate_pos_x_2] add transform_pos_x_pos_z
tag @e[tag=grid,tag=boss,tag=gate_neg_x_1] add transform_neg_x_neg_z
tag @e[tag=grid,tag=boss,tag=gate_neg_x_2] add transform_neg_x_pos_z
tag @e[tag=grid,tag=boss,tag=gate_pos_z_1] add transform_pos_z_neg_x
tag @e[tag=grid,tag=boss,tag=gate_pos_z_2] add transform_pos_z_pos_x
tag @e[tag=grid,tag=boss,tag=gate_neg_z_1] add transform_neg_z_neg_x
tag @e[tag=grid,tag=boss,tag=gate_neg_z_2] add transform_neg_z_pos_x
