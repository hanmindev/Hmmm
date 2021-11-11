#> float:32/add/branch111
# exponents are equal

# F0 = IO.R[0, 1, 2], temp.[0, 1, 2], F1 = temp.[3, 4, 5]

# set IO.R[0, 1, 2] to F0
scoreboard players operation R0 IO = 0 temp
scoreboard players operation R1 IO = 1 temp
scoreboard players operation R2 IO = 3 temp

# add signs
execute if score 0 temp matches 1 run scoreboard players operation R2 IO *= -1 constant
execute if score 4 temp matches 1 run scoreboard players operation 7 temp *= -1 constant


# add significands
scoreboard players operation R2 IO += 7 temp

# remove sign from significands
execute if score R2 IO matches ..-1 run function float:32/add/branch1112


# if sum of significands are 0, output 0
execute if score R2 IO matches 0 run function float:32/add/branch1110

# check for significand overflow
execute unless score R2 IO matches 0 run function float:32/add/branch1111