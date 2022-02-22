#> extended_float:32/sin/real
#   Case when the angle is real
#

# yes I know it is literally a sin to use ^ ^ ^ to teleport an entity and grab it's position for trignometry but I think this
# will beat having to use 563792 floating point arithmetic calculations
function float:32/convert/to_storage/main
data modify entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] set from storage hmmm:io R0
execute store result entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] float 0.00005464151336010201 run data get entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] 1048576

execute positioned 0.0 0.0 0.0 rotated as fef32a78-71bf-4588-9c82-115070685847 run tp fef32a78-71bf-4588-9c82-115070685847 ^ ^ ^1
execute store result score P0 io run data get entity fef32a78-71bf-4588-9c82-115070685847 Pos[0] -1073741824
function float:32/convert/from_int/main


scoreboard players remove R1 io 30
execute if score R1 io matches ..-128 run function extended_float:32/sin/zero