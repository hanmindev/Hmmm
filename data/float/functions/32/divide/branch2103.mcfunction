#> float:32/divide/branch2103
#   Shift temp.2 left until the leading bit is 1.
#

scoreboard players operation 2 temp *= 2 constant
scoreboard players remove R1 io 1

execute unless score 2 temp matches 8388608.. run function float:32/divide/branch2103