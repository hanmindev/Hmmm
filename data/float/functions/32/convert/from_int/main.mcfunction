#> float:32/convert/from_int/main
#   Return a 32-bit float representation of an integer
##
# @params
#   io.P0
#       32-bit signed integer
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand

scoreboard players set R0 io 0
execute if score P0 io matches ..-1 run function float:32/convert/from_int/negative

scoreboard players operation P2 io = P0 io
function float:32/convert/from_int/b/main
scoreboard players operation P0 io = R0 io

scoreboard players remove P2 io 8388608

scoreboard players operation R1 io = P1 io
scoreboard players operation R2 io = P2 io