#> bitwise:32/unsigned/divmod/b1
#   branch from bitwise:32/unsigned/divmod/main
##
# io.R0 = div
# io.R1 = mod
##

scoreboard players set R0 io 0
execute if score P1 io <= R0 io if score P1 io matches ..-1 run scoreboard players set R0 io 1

scoreboard players operation R1 io = P0 io
execute if score R0 io matches 0 run scoreboard players operation R0 io -= P1 io