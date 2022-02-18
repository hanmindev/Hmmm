# test 36
# -8 + 15 = 7
scoreboard players set expected u_test 1088421888

scoreboard players set P0 io 1097859072
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -1056964608
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
# function float:32/add/main
# scoreboard players operation P0 io = R0 io
# scoreboard players operation P1 io = R1 io
# scoreboard players operation P2 io = R2 io
# function float:32/recompose/main
# scoreboard players operation actual u_test = R0 io

# function u_test:run/score



scoreboard players operation 0 temp = P0 io
scoreboard players operation 1 temp = P1 io
scoreboard players operation 2 temp = P2 io
scoreboard players operation 3 temp = P2 io

scoreboard players operation 4 temp = P3 io
scoreboard players operation 5 temp = P4 io
scoreboard players operation 6 temp = P5 io
scoreboard players operation 7 temp = P5 io

# add the implicit leading bit if the exponent is not -127. If it is, add 1 to exponent and end. TODO did I do this? <-
execute unless score 1 temp matches -127 run scoreboard players add 3 temp 8388608

execute unless score 5 temp matches -127 run scoreboard players add 7 temp 8388608

# if... else handler. If temp.8 = 1, end.
scoreboard players set 8 temp 0

# check whether F0 is NaN, infinity, or 0
function float:32/check_type/main

# nan exception
execute if score R0 io matches 0 run function float:32/add/exception/nan

# return F1 if F0 is 0
execute if score R0 io matches 3..4 run function float:32/add/branch0