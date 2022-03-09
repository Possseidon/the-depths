# Triggers spawn effects depending on the just entered level.

title @a times 10 60 20

execute as @s[nbt={data: {level: 1b}}] run function td:game/room/enter/spawn/1
execute as @s[nbt={data: {level: 2b}}] run function td:game/room/enter/spawn/2
execute as @s[nbt={data: {level: 3b}}] run function td:game/room/enter/spawn/3
execute as @s[nbt={data: {level: 4b}}] run function td:game/room/enter/spawn/4
execute as @s[nbt={data: {level: 5b}}] run function td:game/room/enter/spawn/5
