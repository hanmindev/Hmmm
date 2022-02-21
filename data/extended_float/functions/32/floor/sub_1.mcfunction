#> extended_float:32/floor/sub_1
#   Subtracts 1 from the floored float

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 0

function float:32/subtract/main