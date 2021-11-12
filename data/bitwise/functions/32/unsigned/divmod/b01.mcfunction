#> bitwise:32/unsigned/divmod/b01
#   branch from bitwise:32/unsigned/divmod/b0
##
# io.R0 = div
# io.R1 = mod
# temp.0 = mod1
# temp.1 = div1
# temp.2 = or
##

scoreboard players set 0 temp 1073741824
scoreboard players operation 0 temp %= P1 io

scoreboard players set 1 temp 1073741824
scoreboard players operation 1 temp /= P1 io
scoreboard players operation 1 temp *= 2 constant
scoreboard players operation R0 io += 1 temp

scoreboard players operation 0 temp *= 2 constant

scoreboard players set 2 temp 0
execute if score 0 temp matches ..-1 run scoreboard players set 2 temp 1
execute if score 0 temp >= P1 io run scoreboard players set 2 temp 1
execute if score 2 temp matches 1 run function bitwise:32/unsigned/divmod/b010

scoreboard players operation R1 io += 0 temp
scoreboard players set 2 temp 0
execute if score R1 io matches ..-1 run scoreboard players set 2 temp 1
execute if score R1 io >= P1 io run scoreboard players set 2 temp 1
execute if score 2 temp matches 1 run function bitwise:32/unsigned/divmod/b011