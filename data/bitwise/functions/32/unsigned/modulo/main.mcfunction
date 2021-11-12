#> bitwise:32/unsigned/modulo/main
#   Return the unsigned modulo of io.P[0, 1]
##
# @params
#   io.P[0, 1]
#       Two 32-bit integers
# @returns
#   io.R0
#       32-bit integer
##

function bitwise:32/unsigned/divmod/main
scoreboard players operation R0 io = R1 io