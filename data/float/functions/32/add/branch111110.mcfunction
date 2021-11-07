#> float:32/add/branch111110
# shift significand left, decrease exponent

scoreboard players operation R2 IO *= 2 constant
scoreboard players remove R1 IO 1

# check for underflow
execute if score R1 IO matches ..-128 run function float:32/add/exception/underflow
execute unless score R1 IO matches ..-128 run function float:32/add/branch11111