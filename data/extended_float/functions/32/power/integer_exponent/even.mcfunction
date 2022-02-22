#> extended_float:32/power/integer_exponent/even
#   Case when the exponent is even
#

scoreboard players operation 9 temp = P3 io
scoreboard players operation 10 temp = P4 io
scoreboard players operation 11 temp = P5 io

scoreboard players operation P3 io = P0 io
scoreboard players operation P4 io = P1 io
scoreboard players operation P5 io = P2 io

function float:32/multiply/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = 9 temp
scoreboard players operation P4 io = 10 temp
scoreboard players remove P4 io 1
scoreboard players operation P5 io = 11 temp

function extended_float:32/power/integer_exponent/main

scoreboard players set 0 temp 0