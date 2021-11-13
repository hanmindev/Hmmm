#> float:32/divide/branch2104
#   Shift temp.2 left until the leading bit is 1.
#

scoreboard players operation 5 temp *= 2 constant
scoreboard players add R1 io 1

execute unless score 5 temp matches 8388608.. run function float:32/divide/branch2104