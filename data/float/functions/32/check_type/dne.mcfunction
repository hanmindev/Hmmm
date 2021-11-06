#> float:32/check_type/dne
#   branch for numbers that do not exist
##

scoreboard players set R0 IO 0
execute if score P2 IO matches 0 run function float:32/check_type/inf