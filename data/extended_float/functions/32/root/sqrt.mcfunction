# Use inverse of fast inverse sqrt
scoreboard players operation P0 io = P3 io
scoreboard players operation P1 io = P4 io
scoreboard players operation P2 io = P5 io

function extended_float:32/fast_inverse_sqrt/main

scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players set P2 io 0

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

function float:32/divide/main

scoreboard players set 0 temp 0