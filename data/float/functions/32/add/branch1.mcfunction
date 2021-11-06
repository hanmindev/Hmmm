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
execute if score 7 temp matches 1..2 run function float:32/add/branch2


# other case
execute if score 6 temp matches 0 run function float:32/add/branch11