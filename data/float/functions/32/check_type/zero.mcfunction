#> float:32/check_type/zero
#   branch for zeros
##

execute if score P0 io matches 0 run scoreboard players set R0 io 3
execute if score P0 io matches 1 run scoreboard players set R0 io 4