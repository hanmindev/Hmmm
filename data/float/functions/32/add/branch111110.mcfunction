#> float:32/add/branch111110
# shift significand left, decrease exponent

scoreboard players operation R2 io *= 2 constant
scoreboard players remove R1 io 1

# check for underflow
execute if score R1 io matches ..-128 run function float:32/add/exception/underflow
execute unless score R1 io matches ..-128 run function float:32/add/branch11111