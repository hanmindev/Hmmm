#> float:32/recompose/main
#   Return the 32-bit floating-point representation using
#   io.P0 as a sign, io.P1 as an (signed) exponent and
#   io.P2 as a (unsigned) significand
#   Essentially the inverse of float:32/decompose/main
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R0
#       32-bit float
##

# set io.R0 to the exponent
scoreboard players operation R0 io = P1 io
# add 127 to remove sign
scoreboard players add R0 io 127
# shift io.R0 to put it in the right place
scoreboard players operation R0 io *= 8388608 constant

# add the significand to exponent to yield last 31-bits of the float
scoreboard players operation R0 io += P2 io

# add the sign (add 2^31) if needed
execute if score P0 io matches 1 run function float:32/recompose/replace_sign