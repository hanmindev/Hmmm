# test 36
# 11821 - 1 = 11820
scoreboard players set expected u_test 1178120192

scoreboard players set P0 io 1065353216
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1178121216
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io





# scoreboard players add P3 io 1

# # maintain a copy of the inputs
# scoreboard players operation 0 temp = P0 io
# scoreboard players operation 1 temp = P1 io
# scoreboard players operation 2 temp = P2 io
# scoreboard players operation 3 temp = P2 io

# scoreboard players operation 4 temp = P3 io
# scoreboard players operation 5 temp = P4 io
# scoreboard players operation 6 temp = P5 io
# scoreboard players operation 7 temp = P5 io

# # add the implicit leading bit if the exponent is not -127. If it is, add 1 to exponent and end. TODO did I do this? <-
# execute unless score 1 temp matches -127 run scoreboard players add 3 temp 8388608

# execute unless score 5 temp matches -127 run scoreboard players add 7 temp 8388608

# # if... else handler. If temp.8 = 1, end.
# scoreboard players set 8 temp 0

# # check whether F0 is NaN, infinity, or 0
# function float:32/check_type/main

# # nan exception
# execute if score R0 io matches 0 run function float:32/add/exception/nan

# # return F1 if F0 is 0
# execute if score R0 io matches 3..4 run function float:32/add/branch0


# #### branch 1

# #> float:32/add/branch1
# ##

# # store F0 state
# scoreboard players operation 9 temp = R0 io

# # check whether F1 is 0
# scoreboard players operation P0 io = 4 temp
# scoreboard players operation P1 io = 5 temp
# scoreboard players operation P2 io = 6 temp
# function float:32/check_type/main

# # store F1 state
# scoreboard players operation 10 temp = R0 io

# # nan exception
# execute if score R0 io matches 0 run function float:32/add/exception/nan

# # return F0 if F1 is 0
# execute if score R0 io matches 3..4 run function float:32/add/branch10

# # If F0 is an infinity, check if F1 a different infinity. Otherwise return F0
# execute if score 8 temp matches 0 if score 9 temp matches 1..2 run function float:32/add/branch2
# execute if score 8 temp matches 0 if score 10 temp matches 1..2 run function float:32/add/branch3


# # other case
# execute if score 8 temp matches 0 run say got here



function float:32/subtract/main
# scoreboard players operation P0 io = R0 io
# scoreboard players operation P1 io = R1 io
# scoreboard players operation P2 io = R2 io
# function float:32/recompose/main
# scoreboard players operation actual u_test = R0 io

# function u_test:run/score