#> float:32/add/branch110
# set larger float to F0, smaller float to F1

# increment smaller exponent, shift significant right
function float:32/add/branch1101

# if significand is 0, return F0
scoreboard players operation R0 IO = 0 temp
scoreboard players operation R1 IO = 1 temp
scoreboard players operation R2 IO = 2 temp

# if significand is not 0, repeat from branch11
execute unless score 6 temp matches 0 run function float:32/add/branch11