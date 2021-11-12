#> bitwise:32/modulo/main
#   Return the modulo of io.P[0, 1]
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


execute if score F0 io matches 0 run function bitwise:32/unsigned/modulo/main
execute if score F0 io matches 1 run function bitwise:32/signed/modulo/main