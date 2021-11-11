#> float:32/divide/branch2102
#   stuff
#

scoreboard players operation R2 IO *= 2 constant
scoreboard players operation 3 temp *= 2 constant
execute if score 0 temp >= 1 temp run function float:32/divide/branch2100

scoreboard players operation 0 temp *= 2 constant
