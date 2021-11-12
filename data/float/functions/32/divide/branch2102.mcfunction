#> float:32/divide/branch2102
#   Recursive long division
#

scoreboard players operation R2 io *= 2 constant
execute if score 0 temp >= 1 temp run function float:32/divide/branch2100

scoreboard players operation 0 temp *= 2 constant
