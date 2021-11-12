#> bitwise:32/unsigned/divmod/b011
#   branch from bitwise:32/unsigned/divmod/b01
##
# io.R0 = div
# io.R1 = mod
# temp.0 = mod1
# temp.1 = div1
# temp.2 = or
##

scoreboard players operation R1 io -= P1 io
scoreboard players add R0 io 1