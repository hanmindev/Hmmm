#> float:32/decompose/main
#   Return the exponent and significand of io.P0
##
# @params
#   io.P0
#       32-bit float
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##

# extract the leftmost bit (sign), leave R0 as 31-bits
scoreboard players set R0 io 0
scoreboard players operation R1 io = P0 io
execute if score R1 io matches ..-1 run function float:32/decompose/extract_sign


scoreboard players operation R2 io = R1 io

# slice the significand off
scoreboard players operation R1 io /= 8388608 constant
# sign the exponent
scoreboard players remove R1 io 127

# slice the exponent off
scoreboard players operation R2 io %= 8388608 constant