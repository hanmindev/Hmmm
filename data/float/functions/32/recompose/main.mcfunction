#> float:32/recompose/main
#   Return the 32-bit floating-point representation using
#   IO.P0 as a sign, IO.P1 as an (signed) exponent and
#   IO.P2 as a (unsigned) significand
#   Essentially the inverse of float:32/decompose/main
##
# @params
#   IO.P{0, 1, 2}
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   IO.R0
#       32-bit float
##

# set IO.R0 to the exponent
scoreboard players operation R0 IO = P1 IO
# add 127 to remove sign
scoreboard players add R0 IO 127
# shift IO.R0 to put it in the right place
scoreboard players operation R0 IO *= 8388608 constant

# add the significand to exponent to yield last 31-bits of the float
scoreboard players operation R0 IO += P2 IO

# add the sign (add 2^31) if needed
execute if score P0 IO matches 1 run function float:32/recompose/replace_sign