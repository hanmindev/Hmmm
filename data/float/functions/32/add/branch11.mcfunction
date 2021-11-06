#> float:32/add/branch11
# check for exponent equivalence

# enter loop if exponents are not equal
execute unless score 1 temp = 4 temp run function float:32/add/branch110
execute if score 1 temp = 4 temp run function float:32/add/branch111