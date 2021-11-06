#> float:32/add/branch1112
# remove sign from significand and put it in R0
scoreboard players operation R2 IO *= -1 constant
scoreboard players set R0 IO 1