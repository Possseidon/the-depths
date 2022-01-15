tiles = [("default", "white_concrete", 0),
         ("spawn", "lime_concrete", 0),
         ("exit", "red_concrete", 0),
         ("special", "yellow_concrete", 0),
         ("boss", "gray_concrete", 0),
         ("boss_helper", "light_gray_concrete", 0),
         ("cursor", "blue_concrete", 0.5),
         ("next_move", "light_blue_concrete", 0.5)]

out(f'kill @e[tag=grid_visualization]')

def summon(tags, head, height):
    tag_string = ", ".join([f"tag={tag}" for tag in tags])
    out(f'execute at @e[{tag_string}] run summon armor_stand ~0 ~{-0.4 + height} ~0 {{Tags: [grid_visualization], ArmorItems: [{{}}, {{}}, {{}}, {{id: "minecraft:{head}", Count: 1b}}], NoGravity: 1b, Invisible: 1b, Small: 1b, Marker: 1b}}')

for tag, head, height in tiles:
    summon(["grid", tag], head, height)

summon(["gate"], "white_concrete", 0)
