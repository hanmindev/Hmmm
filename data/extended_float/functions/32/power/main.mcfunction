#> extended_float:32/power/main
#   Return the first 32-bit float raised to the power of the second.
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..25]

scoreboard players set 0 temp 1
execute if score P0 io matches 0 run function extended_float:32/power/positive_base
execute if score 0 temp matches 1 run function extended_float:32/power/negative_base