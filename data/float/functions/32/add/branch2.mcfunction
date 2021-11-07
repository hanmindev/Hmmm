#> float:32/add/branch2
#   Unless F1 is a different infinity than F0, return F0. Throw a NaN exception overwise.
##

function float:32/add/branch10
execute if score 10 temp matches 1..2 unless score 10 temp = 9 temp run function float:32/add/exception/nan