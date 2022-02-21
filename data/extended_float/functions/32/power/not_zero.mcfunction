#> extended_float:32/power/not_zero
#   Return not one
#

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io


scoreboard players operation P3 io = 23 temp
scoreboard players operation P4 io = 24 temp
scoreboard players operation P5 io = 25 temp

function float:32/multiply/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/exponential/main