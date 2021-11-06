#> bitwise:32/unsigned/divmod/b010
#   branch from bitwise:32/unsigned/divmod/b01
##
# IO.R0 = div
# IO.R1 = mod
# temp.0 = mod1
# temp.1 = div1
# temp.2 = or
##

scoreboard players operation 0 temp -= P1 IO
scoreboard players add R0 IO 1