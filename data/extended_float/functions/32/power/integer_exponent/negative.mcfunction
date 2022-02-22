#> extended_float:32/power/integer_exponent/negative
#   Case when the exponent is negative
#

scoreboard players operation 9 temp = P3 io
scoreboard players operation 10 temp = P4 io
scoreboard players operation 11 temp = P5 io

scoreboard players operation P3 io = P0 io
scoreboard players operation P4 io = P1 io
scoreboard players operation P5 io = P2 io

scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players set P2 io 0

function float:32/divide/main

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players operation P4 io = 10 temp
scoreboard players operation P5 io = 11 temp

function extended_float:32/power/integer_exponent/main

scoreboard players set 0 temp 0