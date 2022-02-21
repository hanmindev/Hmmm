#> extended_float:32/root/negative_radicand
#   Case when the radicand is negative
#

scoreboard players operation 0 temp = P0 io
scoreboard players operation 1 temp = P1 io
scoreboard players operation 2 temp = P2 io

scoreboard players operation P0 io = 12 temp
scoreboard players operation P1 io = 13 temp
scoreboard players operation P2 io = 14 temp

function extended_float:32/float_type/main
scoreboard players operation 3 temp = R0 io
execute unless score 3 temp matches 1 run function extended_float:32/power/nan
execute if score 3 temp matches 1 run function extended_float:32/power/int
