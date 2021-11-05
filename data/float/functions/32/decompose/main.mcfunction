#> float:32/decompose
#   Return the exponent and significand of IO.P0
#
# @params
#   IO.P0
#       32-bit float
# @returns
#   IO.R{0, 1}
#       32-bit exponent, 32-bit significand
#
# temp.0 = sign
#

# extract the leftmost bit (sign), leave R0 as 31-bits
scoreboard players set 0 temp 1
scoreboard players operation R0 IO = P0 IO
execute if score R0 IO matches ..-1 run function float:32/decompose/extract_sign


scoreboard players operation R1 IO = R0 IO

# slice the significand off
scoreboard players operation R0 IO /= 8388608 constant
# sign the exponent
scoreboard players remove R0 IO 127

# slice the exponent off
scoreboard players operation R1 IO %= 8388608 constant
# multiply by sign to yield signed significand
scoreboard players operation R1 IO *= 0 temp