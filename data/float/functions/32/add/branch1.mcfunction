#> float:32/add/branch1
##

# store F0 state
scoreboard players operation 9 temp = R0 io

# check whether F1 is 0
scoreboard players operation P0 io = 4 temp
scoreboard players operation P1 io = 5 temp
scoreboard players operation P2 io = 6 temp
function float:32/check_type/main

# store F1 state
scoreboard players operation 10 temp = R0 io

# nan exception
execute if score R0 io matches 0 run function float:32/add/exception/nan

# return F0 if F1 is 0
execute if score R0 io matches 3..4 run function float:32/add/branch10

# If F0 is an infinity, check if F1 a different infinity. Otherwise return F0
execute if score 8 temp matches 0 if score 9 temp matches 1..2 run function float:32/add/branch2
execute if score 8 temp matches 0 if score 10 temp matches 1..2 run function float:32/add/branch3


# other case
execute if score 8 temp matches 0 run function float:32/add/branch11