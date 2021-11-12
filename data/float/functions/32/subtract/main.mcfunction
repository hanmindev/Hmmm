#> float:32/subtract/main
#   Return the difference of two 32-bit floats
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

scoreboard players add P3 io 1
execute if score P3 io matches 2 run scoreboard players set P3 io 0

function float:32/add/main