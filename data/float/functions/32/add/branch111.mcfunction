#> float:32/add/branch111
# exponents are equal

# F0 = IO.R{0, 1, 2}, temp.{0, 1, 2}, F1 = temp.{3, 4, 5}

# set IO.R{0, 1, 2} to F0
scoreboard players operation R0 IO = 0 temp
scoreboard players operation R1 IO = 1 temp
scoreboard players operation R2 IO = 2 temp
# add significands TODO: are the place values correctly initialized or do I have to shift them to match decimal
scoreboard players operation R2 IO += 5 temp

# if sum of significands are 0, output 0
execute if score R2 IO matches 0 run function float:32/add/branch1110

# check for significand overflow
execute unless score R2 IO matches 0 run function float:32/add/branch1111