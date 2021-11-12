#> float:32/add/branch11
# check for exponent equivalence


# swap floats if F1 is larger
execute if score 1 temp < 5 temp run function float:32/add/branch1100


# enter loop if exponents are not equal
execute unless score 1 temp = 5 temp unless score 7 temp matches 0 if score 5 temp matches -127 run scoreboard players set 5 temp -126

execute unless score 1 temp = 5 temp unless score 7 temp matches 0 run function float:32/add/branch110
execute if score 1 temp = 5 temp unless score 7 temp matches 0 run function float:32/add/branch111