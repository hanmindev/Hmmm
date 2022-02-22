tp @s 0.0 0.0 -1.0
data modify entity @s Pos[0] set from storage hmmm:io R0
execute at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0

execute store result score P0 io run data get entity @s Rotation[0] 4685082.536292368
tp @s 0.0 0.0 0.0