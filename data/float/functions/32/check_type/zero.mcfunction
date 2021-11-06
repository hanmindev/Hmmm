#> float:32/check_type/zero
#   branch for zeros
##

execute if score P0 IO matches 0 run scoreboard players set R0 IO 3
execute if score P0 IO matches 1 run scoreboard players set R0 IO 4