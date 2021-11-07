#> float:32/add/branch11
# check for exponent equivalence


# swap floats if F1 is larger
execute if score 1 temp < 4 temp run function float:32/add/branch1100

# set IO.R{0, 1, 2} to F0
scoreboard players operation R0 IO = 0 temp
scoreboard players operation R1 IO = 1 temp
scoreboard players operation R2 IO = 2 temp

# enter loop if exponents are not equal
execute unless score 1 temp = 4 temp unless score 5 temp matches 0 run function float:32/add/branch110
execute if score 1 temp = 4 temp unless score 5 temp matches 0 run function float:32/add/branch111