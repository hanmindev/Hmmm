#> extended_float:32/float_type/main
#   Return whether a float is:
#       An even integer
#       An odd integer
#       Not an integer
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R0
#       0: even integer, 1: odd integer, 2: not an integer
#       All sufficiently large numbers will be treated as even integers (since they technically are)
#

scoreboard players set R0 io 0
execute if score P1 io matches -126..-1 run scoreboard players set R0 io 2
execute if score P1 io matches 0 run function extended_float:32/float_type/one
execute if score P1 io matches 1..22 run function extended_float:32/float_type/possible_integer