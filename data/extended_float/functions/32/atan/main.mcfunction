#> extended_float:32/atan/main
#   Return the arctan of the 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#

function float:32/convert/to_storage_double/main
tp fef32a78-71bf-4588-9c82-115070685847 0.0 0.0 -1.0
data modify entity fef32a78-71bf-4588-9c82-115070685847 Pos[0] set from storage io R0
execute at fef32a78-71bf-4588-9c82-115070685847 run tp fef32a78-71bf-4588-9c82-115070685847 ~ ~ ~ facing 0.0 0.0 0.0

execute store result score P0 io run data get entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] 4685082.536292368
tp fef32a78-71bf-4588-9c82-115070685847 0.0 0.0 0.0
function float:32/convert/from_int/main
scoreboard players remove R1 io 28