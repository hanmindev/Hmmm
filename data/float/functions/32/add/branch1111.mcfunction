#> float:32/add/branch1111
# check for significand overflow

# F0 = temp.{0, 1, 2}

execute unless score R2 IO matches 8388608.. run function float:32/add/branch11111
execute if score R2 IO matches 8388608.. run function float:32/add/branch11110
