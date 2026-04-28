particle reverse_portal ~ ~1.0 ~ 0.3 0.5 0.3 0.2 50
playsound entity.enderman.teleport player @a ~ ~ ~ 2.0 0.5
give @a[tag=undo_movement_current,limit=1] minecraft:clock{display:{Name:'"\\u00a7aClock of Reversal"'}}
