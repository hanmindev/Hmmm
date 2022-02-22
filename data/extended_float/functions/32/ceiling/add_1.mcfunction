#> extended_float:32/ceiling/add_1
#   Adds 1 to the ceilinged float

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 0

function float:32/add/main