#> bitwise:32/unsigned/divmod/main
#   Return the unsigned quotient and modulo of io.P[0, 1]
##
# @params
#   io.P[0, 1]
#       Two 32-bit integers
# @returns
#   io.R[0, 1]
#       Two 32-bit integers, quotient and modulo
##
# io.R0 = div
# io.R1 = mod
##

scoreboard players operation R0 io = P0 io
execute if score P1 io matches 1.. run function bitwise:32/unsigned/divmod/b0
execute if score P1 io matches ..0 run function bitwise:32/unsigned/divmod/b1