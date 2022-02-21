#> extended_float:32/exponential/main
#   Return e raised to a float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..9]


scoreboard players set 0 temp 1
execute if score P0 io matches 0 if score P1 io matches -127 if score P2 io matches 0 run function extended_float:32/exponential/one
execute if score 0 temp matches 1 if score P0 io matches 0 if score P1 io matches 0 if score P2 io matches 0 run function extended_float:32/exponential/e
execute if score 0 temp matches 1 run function extended_float:32/exponential/non_zero