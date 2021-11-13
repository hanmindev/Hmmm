#> float:32/multiply/branch2103
#   Shift io.R2 left until the leading bit is 1.
#

scoreboard players set 8 temp 0
scoreboard players operation R2 io *= 2 constant
scoreboard players remove R1 io 1


execute if score R1 io matches ..-126 run function float:32/multiply/exception/underflow
execute if score 8 temp matches 0 if score R1 io matches -125.. unless score R2 io matches 8388608.. run function float:32/multiply/branch2103