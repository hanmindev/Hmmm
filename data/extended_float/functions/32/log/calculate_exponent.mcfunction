#> extended_float:32/log/calculate_exponent
#   Calculate the next exponent by multiplying the previous exponent by (ax-1)

scoreboard players operation P0 io = 14 temp
scoreboard players operation P1 io = 15 temp
scoreboard players operation P2 io = 16 temp

scoreboard players operation P3 io = 17 temp
scoreboard players operation P4 io = 18 temp
scoreboard players operation P5 io = 19 temp
function float:32/multiply/main

# copy result to temp.[17..19]
scoreboard players operation 17 temp = R0 io
scoreboard players operation 18 temp = R1 io
scoreboard players operation 19 temp = R2 io