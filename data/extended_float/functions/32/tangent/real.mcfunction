#> extended_float:32/tangent/real
#   Case when the angle is real
#

# see sine implementation for comments
function float:32/convert/to_storage/main
data modify entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] set from storage io R0
execute store result entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] float 0.00005464151336010201 run data get entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] 1048576

execute positioned 0.0 0.0 0.0 rotated as fef32a78-71bf-4588-9c82-115070685847 run tp fef32a78-71bf-4588-9c82-115070685847 ^ ^ ^1
execute store result score P0 io run data get entity fef32a78-71bf-4588-9c82-115070685847 Pos[2] 1073741824
function float:32/convert/from_int/main
scoreboard players remove R1 io 30
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

execute store result score P0 io run data get entity fef32a78-71bf-4588-9c82-115070685847 Pos[0] -1073741824
function float:32/convert/from_int/main
scoreboard players remove R1 io 30

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

function float:32/divide/main