#> float:32/add/branch11110
# check exponent overflow

scoreboard players add R1 io 1
# report overflow
execute if score R1 io matches 129.. run function float:32/add/exception/overflow
# no overflow
execute unless score R1 io matches 129.. run scoreboard players operation R2 io /= 2 constant
execute unless score R1 io matches 129.. run function float:32/add/branch11111