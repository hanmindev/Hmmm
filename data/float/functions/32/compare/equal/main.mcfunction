#> float:32/compare/equal/main
#   Checks for equality between two floating point numbers
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R0
#       0 if numbers are not equal, 1 if they are.
#
scoreboard players set R0 io 1
execute unless score P0 io = P3 io run scoreboard players set R0 io 0
execute unless score P1 io = P4 io run scoreboard players set R0 io 0
execute unless score P2 io = P5 io run scoreboard players set R0 io 0