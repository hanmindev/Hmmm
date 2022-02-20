#> float:32/absolute_value/main
#   Return the absolute value of a 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##

scoreboard players set R0 io 0
scoreboard players operation R1 io = P1 io
scoreboard players operation R2 io = P2 io