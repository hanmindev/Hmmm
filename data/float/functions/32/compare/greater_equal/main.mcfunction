#> float:32/compare/greater_equal/main
#   Check whether the first number is greater or equal to the second
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R0
#       0 if false, 1 if true
#
scoreboard players set R0 io 0
execute if score P0 io matches 0 if score P3 io matches 1 run scoreboard players set R0 io 1
execute if score P0 io = P3 io run function float:32/compare/greater_equal/branch0