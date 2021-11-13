#> bitwise:32/signed/modulo/main
#   Return the signed modulo of io.P[0, 1]
##
# @params
#   io.F0 = [0, 1]
#       Whether the 32-bit integers are signed or unsigned
#   io.P[0, 1]
#       Two 32-bit integers
# @returns
#   io.R0
#       32-bit integer
##

scoreboard players operation R0 io = P0 io
scoreboard players operation R0 io %= P1 io