#> extended_float:32/fast_inverse_sqrt/positive
#   Positive case

# save x2
scoreboard players operation 11 temp = P0 io
scoreboard players operation 12 temp = P1 io
scoreboard players remove 12 temp 1
scoreboard players operation 13 temp = P2 io

# evil floating point bit hack
function float:32/recompose/main
scoreboard players operation P1 io = R0 io

# huh
scoreboard players operation P1 io /= 2 constant
scoreboard players set P0 io 1597463007
scoreboard players operation P0 io -= P1 io
function float:32/decompose/main

# save y
scoreboard players operation 14 temp = R0 io
scoreboard players operation 15 temp = R1 io
scoreboard players operation 16 temp = R2 io

# 1st iteration

# y^2
scoreboard players operation P0 io = 14 temp
scoreboard players operation P1 io = 15 temp
scoreboard players operation P2 io = 16 temp

scoreboard players operation P3 io = 14 temp
scoreboard players operation P4 io = 15 temp
scoreboard players operation P5 io = 16 temp
function float:32/multiply/main

# x2*y^2
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = 11 temp
scoreboard players operation P4 io = 12 temp
scoreboard players operation P5 io = 13 temp
function float:32/multiply/main

# 1.5 - x2*y^2
scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players set P2 io 4194304

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/subtract/main

# y * (1.5 - x2*y^2)
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = 14 temp
scoreboard players operation P4 io = 15 temp
scoreboard players operation P5 io = 16 temp
function float:32/multiply/main



# second iteration (optional)

# save y
scoreboard players operation 14 temp = R0 io
scoreboard players operation 15 temp = R1 io
scoreboard players operation 16 temp = R2 io

# 1st iteration

# y^2
scoreboard players operation P0 io = 14 temp
scoreboard players operation P1 io = 15 temp
scoreboard players operation P2 io = 16 temp

scoreboard players operation P3 io = 14 temp
scoreboard players operation P4 io = 15 temp
scoreboard players operation P5 io = 16 temp
function float:32/multiply/main

# x2*y^2
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = 11 temp
scoreboard players operation P4 io = 12 temp
scoreboard players operation P5 io = 13 temp
function float:32/multiply/main

# 1.5 - x2*y^2
scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players set P2 io 4194304

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/subtract/main

# y * (1.5 - x2*y^2)
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = 14 temp
scoreboard players operation P4 io = 15 temp
scoreboard players operation P5 io = 16 temp
function float:32/multiply/main