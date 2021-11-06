#> float:32/add/branch110
# set larger float to F0, smaller float to F1

# swap floats if F1 is larger
execute if score 1 temp < 4 temp run function float:32/add/branch1100

# set IO.R{0, 1, 2} to F0
scoreboard players operation R0 IO = 0 temp
scoreboard players operation R1 IO = 1 temp
scoreboard players operation R2 IO = 2 temp


# increment smaller exponent, shift significant right
function float:32/add/branch1101

# if significand is 0, return F0
# this is already done above

# if significand is not 0, repeat from branch11
execute unless score 5 temp matches 0 run function float:32/add/branch11