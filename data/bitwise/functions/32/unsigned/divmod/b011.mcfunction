#> bitwise:32/unsigned/divmod/b011
#   branch from bitwise:32/unsigned/divmod/b01
##
# IO.R0 = div
# IO.R1 = mod
# temp.0 = mod1
# temp.1 = div1
# temp.2 = or
##

scoreboard players operation R1 IO -= P1 IO
scoreboard players add R0 IO 1