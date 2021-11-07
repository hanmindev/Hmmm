
scoreboard players set expected u_test 2139095040

scoreboard players set P0 IO 1086324736
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO


scoreboard players operation 0 temp = P0 IO
scoreboard players operation 1 temp = P1 IO
scoreboard players operation 2 temp = P2 IO

scoreboard players operation 3 temp = P3 IO
scoreboard players operation 4 temp = P4 IO
scoreboard players operation 5 temp = P5 IO

# add the implicit leading bit
scoreboard players add 2 temp 8388608
scoreboard players add 5 temp 8388608

# if... else handler. If temp.6 = 1, end.
scoreboard players set 6 temp 0

# check whether F0 is NaN, infinity, or 0
function float:32/check_type/main

# nan exception
execute if score R0 IO matches 0 run function float:32/add/exception/nan

# return F1 if F0 is 0
execute if score R0 IO matches 3..4 run function float:32/add/branch0

# other case

#> float:32/add/branch1
##

# store F0 state
scoreboard players operation 7 temp = R0 IO

# check whether F1 is 0
scoreboard players operation P0 IO = 3 temp
scoreboard players operation P1 IO = 4 temp
scoreboard players operation P2 IO = 5 temp
scoreboard players remove P2 IO 8388608
function float:32/check_type/main

# return F0 if F1 is 0
execute if score R0 IO matches 3..4 run function float:32/add/branch10

# nan exception
execute if score R0 IO matches 0 run function float:32/add/exception/nan

# If F0 is an infinity, check if F1 a different infinity. Otherwise return F0