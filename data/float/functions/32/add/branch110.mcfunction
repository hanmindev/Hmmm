#> float:32/add/branch110
# set larger float to F0, smaller float to F1

# increment smaller exponent, shift significant right
function float:32/add/branch1101

# if significand is 0, return F0
# this is already done above

# if significand is not 0, repeat from branch11
execute unless score 5 temp matches 0 run function float:32/add/branch11