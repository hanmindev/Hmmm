#> float:32/add/branch3
#   Unless F0 is a different infinity than F1, return F1. Throw a NaN exception overwise.
##

function float:32/add/branch12
execute if score 9 temp matches 1..2 unless score 10 temp = 9 temp run function float:32/add/exception/nan