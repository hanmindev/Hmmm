#> float:32/recompose/main
#   Return the 32-bit floating-point representation using
#   IO.P0 as an exponent and IO.P1 as a (signed) significand
#   Essentially the inverse of float:32/decompose/main
#
# @params
#   IO.P{0, 1}
#       32-bit exponent, 32-bit significand
# @returns
#   IO.R0
#       32-bit float
#
# temp.0 = sign
# temp.1 = significand_format
#

# set temp.1 to the significand without the sign, set temp.0 to the sign
scoreboard players set 0 IO.R0
scoreboard players operation 1 temp = P1 IO
execute if score 1 temp matches ..-1 run function float:32/recompose/extract_sign

# set IO.R0 to the exponent
scoreboard players operation R0 IO = P0 IO
# add 127 to remove sign
scoreboard players add R0 IO 127
# shift IO.R0 to put it in the right place
scoreboard players operation R0 IO *= 8388608 constant

# add the significand to exponent to yield last 31-bits of the float
scoreboard players operation R0 IO += 1 temp

# add the sign (add 2^31) if needed
execute if score 0 temp matches -1 run function float:32/recompose/replace_sign