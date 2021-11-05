#> bitwise:32/unsigned/divmod/b1
#   branch from bitwise:32/unsigned/divmod/main
#
# IO.R0 = div
# IO.R1 = mod
#

scoreboard players set R0 IO 0
execute if score P1 IO <= R0 IO if score P1 IO matches ..-1 run scoreboard players set R0 IO 1

scoreboard players operation R1 IO = P0 IO
execute if score R0 IO matches 0 run scoreboard players operation R0 IO -= P1 IO