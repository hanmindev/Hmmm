#> float:32/add/main
#   Return the sum of two 32-bit floats
##
# @params
#   IO.P{0, 1, 2}
#       32-bit sign, 32-bit exponent, 32-bit significand
#   IO.P{3, 4, 5}
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   IO.R{0, 1, 2}
#       32-bit sign, 32-bit exponent, 32-bit significand
##
#   F0 = temp.{0, 1, 2}, IO.P{0, 1, 2}
#   F1 = temp.{3, 4, 5}, IO.P{3, 4, 5}
##

# maintain a copy of the inputs
scoreboard players operation 0 temp = P0 IO
scoreboard players operation 1 temp = P1 IO
scoreboard players operation 2 temp = P2 IO

scoreboard players operation 3 temp = P3 IO
scoreboard players operation 4 temp = P4 IO
scoreboard players operation 5 temp = P5 IO

# add the implicit leading bit
scoreboard players add 2 temp 8388608
scoreboard players add 5 temp 8388608

# if... else handler. If temp.6 = 1, end.
scoreboard players set 6 temp 0

# check whether F0 is 0
function float:32/check_type/main

# return F1 if F0 is 0
execute if score R0 IO matches 3..4 run function float:32/add/branch0
# other case
execute if score 6 temp matches 0 run function float:32/add/branch1