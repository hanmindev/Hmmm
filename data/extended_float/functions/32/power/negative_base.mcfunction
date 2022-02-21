#> extended_float:32/power/negative_base
#   Case when the base is negative
#

scoreboard players operation 0 temp = P0 io
scoreboard players operation 1 temp = P1 io
scoreboard players operation 2 temp = P2 io

scoreboard players operation P0 io = P3 io
scoreboard players operation P1 io = P4 io
scoreboard players operation P2 io = P5 io

function extended_float:32/float_type/main
scoreboard players operation 3 temp = R0 io
execute if score 3 temp matches 2 run function extended_float:32/power/nan
execute if score 3 temp matches 0..1 run function extended_float:32/power/int
