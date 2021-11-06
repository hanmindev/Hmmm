#> float:32/add/branch1
##

# check whether F1 is 0
scoreboard players operation P0 IO = 3 temp
scoreboard players operation P1 IO = 4 temp
scoreboard players operation P2 IO = 5 temp
function float:32/check_type/main


# return F0 if F1 is 0
execute if score R0 IO matches 3..4 run function float:32/add/branch10
# other case
execute if score 6 temp matches 0 run function float:32/add/branch11