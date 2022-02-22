#> extended_float:32/power/integer_exponent/odd
#   Case when the exponent is odd
#

scoreboard players operation 11 temp = P3 io
scoreboard players operation 12 temp = P4 io
scoreboard players operation 13 temp = P5 io

data modify storage calculate stack append value [0,0,0]
execute store result storage calculate stack[-1][0] int 1 run scoreboard players operation P3 io = P0 io
execute store result storage calculate stack[-1][1] int 1 run scoreboard players operation P4 io = P1 io
execute store result storage calculate stack[-1][2] int 1 run scoreboard players operation P5 io = P2 io


function float:32/multiply/main

# n
scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp

# x^2
scoreboard players operation 11 temp = R0 io
scoreboard players operation 12 temp = R1 io
scoreboard players operation 13 temp = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 0

function float:32/subtract/main

scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp
# (n-1)/2
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players remove P4 io 1
scoreboard players operation P5 io = R2 io

function extended_float:32/power/integer_exponent/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

execute store result score P3 io run data get storage calculate stack[-1][0]
execute store result score P4 io run data get storage calculate stack[-1][1]
execute store result score P5 io run data get storage calculate stack[-1][2]
data remove storage calculate stack[-1]
function float:32/multiply/main

scoreboard players set 0 temp 0