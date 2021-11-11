#> float:32/divide/branch0
#   Both values are not NaN
#


execute if score 6 temp matches 3..4 run scoreboard players add 8 temp 1
execute if score 7 temp matches 3..4 run scoreboard players add 8 temp 2

# return 0 if dividend is 0
execute if score 8 temp matches 1 run function float:32/divide/branch1
# return infinity if divisor is 0
execute if score 8 temp matches 2 run function float:32/divide/branch20
# return NaN if both are 0
execute if score 8 temp matches 3 run function float:32/divide/exception/nan
# else
execute if score 8 temp matches 0 run function float:32/divide/branch2