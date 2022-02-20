#> float:32/negate/main
#   Return the negation of a 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##

scoreboard players operation R0 io = P0 io
scoreboard players operation R1 io = P1 io
scoreboard players operation R2 io = P2 io

scoreboard players add R0 io 1
execute if score R0 io matches 2 run scoreboard players set R0 io 0