#> float:32/subtract/main
#   Return the difference of two 32-bit floats
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

scoreboard players add P3 IO 1
execute if score P3 IO matches 2 run scoreboard players set P3 IO 0

function float:32/add/main