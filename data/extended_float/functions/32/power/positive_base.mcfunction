#> extended_float:32/power/positive_base
#   Case when the base is positive
#

scoreboard players operation 23 temp = P3 io
scoreboard players operation 24 temp = P4 io
scoreboard players operation 25 temp = P5 io

function extended_float:32/log/main

scoreboard players set 0 temp 1
execute if score R0 io matches 1 if score R1 io matches 128 if score R2 io matches 0 run function extended_float:32/power/zero
execute if score 0 temp matches 1 run function extended_float:32/power/not_zero

scoreboard players set 0 temp 0