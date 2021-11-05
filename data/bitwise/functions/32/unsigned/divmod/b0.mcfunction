#> bitwise:32/unsigned/divmod/b0
#   branch from bitwise:32/unsigned/divmod/main
#
# IO.R0 = div
# IO.R1 = mod
#

execute if score R0 IO matches ..-1 run function bitwise:32/unsigned/divmod/b00
scoreboard players operation R1 IO = R0 IO
scoreboard players operation R1 IO %= P1 IO
scoreboard players operation R0 IO /= P1 IO

execute if score P0 IO matches ..-1 run function bitwise:32/unsigned/divmod/b01