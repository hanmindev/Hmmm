#> float:32/add/branch11110
# check exponent overflow

scoreboard players add R1 IO 1
# report overflow
execute if score R1 IO matches 129.. run function float:32/add/branch111100
# no overflow
execute unless score R1 IO matches 129.. run scoreboard players operation R2 IO /= 2 constant
execute unless score R1 IO matches 129.. run function float:32/add/branch11111