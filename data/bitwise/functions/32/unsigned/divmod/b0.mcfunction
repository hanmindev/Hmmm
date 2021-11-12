#> bitwise:32/unsigned/divmod/b0
#   branch from bitwise:32/unsigned/divmod/main
##
# io.R0 = div
# io.R1 = mod
##

execute if score R0 io matches ..-1 run function bitwise:32/unsigned/divmod/b00
scoreboard players operation R1 io = R0 io
scoreboard players operation R1 io %= P1 io
scoreboard players operation R0 io /= P1 io

execute if score P0 io matches ..-1 run function bitwise:32/unsigned/divmod/b01