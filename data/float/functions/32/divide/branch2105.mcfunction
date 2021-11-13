#> float:32/divide/branch2105
#   Shift io.R2 left until the leading bit is 1.
#

scoreboard players operation R2 io *= 2 constant
scoreboard players add R1 io 1

execute unless score R2 io matches 8388608.. if score R1 io matches ..-127 run function float:32/divide/branch2105