#> extended_float:32/asin/in_bounds
#   Case when in bounds
#

scoreboard players operation 17 temp = P0 io
scoreboard players operation 18 temp = P1 io
scoreboard players operation 19 temp = P2 io

scoreboard players operation P3 io = P0 io
scoreboard players operation P4 io = P1 io
scoreboard players operation P5 io = P2 io

function float:32/multiply/main

scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players set P2 io 0

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

function float:32/subtract/main

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

function extended_float:32/fast_inverse_sqrt/main

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = 17 temp
scoreboard players operation P4 io = 18 temp
scoreboard players operation P5 io = 19 temp

function float:32/multiply/main

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

function extended_float:32/atan/main