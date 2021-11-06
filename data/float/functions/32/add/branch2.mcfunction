#> float:32/add/branch2
#   Unless F1 is a different infinity than F0, return F0. Throw a NaN exception overwise.
##

scoreboard players operation 8 temp = R0 IO
function float:32/add/branch10
execute if score 8 temp matches 1..2 unless score 8 temp = 7 temp run function float:32/add/exception/nan