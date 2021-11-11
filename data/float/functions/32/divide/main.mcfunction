#> float:32/divide/main
#   Return the quotient of two 32-bit floats
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

# make a copy of everything
scoreboard players operation 0 temp = P0 IO
scoreboard players operation 1 temp = P1 IO
scoreboard players operation 2 temp = P2 IO

scoreboard players operation 3 temp = P3 IO
scoreboard players operation 4 temp = P4 IO
scoreboard players operation 5 temp = P5 IO

# check types for both
function float:32/check_type/main
scoreboard players operation 6 temp = R0 IO

scoreboard players operation P0 IO = 3 temp
scoreboard players operation P1 IO = 4 temp
scoreboard players operation P2 IO = 5 temp

function float:32/check_type/main
scoreboard players operation 7 temp = R0 IO

# if...else handler
scoreboard players set 8 temp 0

# check both are not NaN
execute if score 6 temp matches 0 run scoreboard players set 8 temp 1
execute if score 7 temp matches 0 run scoreboard players set 8 temp 1

execute if score 8 temp matches 1 run function float:32/divide/exception/nan
execute if score 8 temp matches 0 run function float:32/divide/branch0


