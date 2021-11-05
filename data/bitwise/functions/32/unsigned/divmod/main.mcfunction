#> bitwise:32/unsigned/divmod/main
#
# Return the unsigned quotient and modulo of IO.P{0, 1}
#
# @params
#   IO.P{0, 1}
#       Two 32-bit integers
# @returns
#   IO.R{0, 1}
#       Two 32-bit integers, quotient and modulo
#
# IO.R0 = div
# IO.R1 = mod

scoreboard players operation R0 IO = P0 IO
execute if score P1 IO matches 1.. run function bitwise:32/unsigned/divmod/b0
execute if score P1 IO matches ..0 run function bitwise:32/unsigned/divmod/b1