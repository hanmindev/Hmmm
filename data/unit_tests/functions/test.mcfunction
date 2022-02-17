scoreboard players reset * temp
scoreboard players reset * io

# test 27
# 10 + 2 = 12
scoreboard players set expected u_test 1094713344

scoreboard players set P0 io 1073741824
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1092616192
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players reset R0
scoreboard players reset R1
scoreboard players reset R2

scoreboard players reset * temp



scoreboard players operation 0 temp = P0 io
scoreboard players operation 1 temp = P1 io
scoreboard players operation 2 temp = P2 io
scoreboard players operation 3 temp = P2 io

scoreboard players operation 4 temp = P3 io
scoreboard players operation 5 temp = P4 io
scoreboard players operation 6 temp = P5 io
scoreboard players operation 7 temp = P5 io


# function float:32/add/main
# scoreboard players operation P0 io = R0 io
# scoreboard players operation P1 io = R1 io
# scoreboard players operation P2 io = R2 io
# function float:32/recompose/main
# scoreboard players operation actual u_test = R0 io

# function u_test:run/score