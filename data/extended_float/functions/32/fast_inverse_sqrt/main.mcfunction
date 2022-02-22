#> extended_float:32/fast_inverse_sqrt/main
#   Return the inverse square root of the 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[11..16]

execute if score P0 io matches 0 run function extended_float:32/fast_inverse_sqrt/positive
execute if score P0 io matches 1 run function extended_float:32/fast_inverse_sqrt/nan