#> float:32/add/main
#   Return the sum of two 32-bit floats
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##
#   F0 = temp.[0, 1, 2], io.P[0, 1, 2]
#   F1 = temp.[3, 4, 5], io.P[3, 4, 5]
##

# maintain a copy of the inputs
scoreboard players operation 0 temp = P0 io
scoreboard players operation 1 temp = P1 io
scoreboard players operation 2 temp = P2 io
scoreboard players operation 3 temp = P2 io

scoreboard players operation 4 temp = P3 io
scoreboard players operation 5 temp = P4 io
scoreboard players operation 6 temp = P5 io
scoreboard players operation 7 temp = P5 io

# add the implicit leading bit if the exponent is not -127. If it is, add 1 to exponent and end. TODO did I do this? <-
execute unless score 1 temp matches -127 run scoreboard players add 3 temp 8388608

execute unless score 5 temp matches -127 run scoreboard players add 7 temp 8388608

# if... else handler. If temp.8 = 1, end.
scoreboard players set 8 temp 0

# check whether F0 is NaN, infinity, or 0
function float:32/check_type/main

# nan exception
execute if score R0 io matches 0 run function float:32/add/exception/nan

# return F1 if F0 is 0
execute if score R0 io matches 3..4 run function float:32/add/branch0

# other case
execute if score 8 temp matches 0 run function float:32/add/branch1