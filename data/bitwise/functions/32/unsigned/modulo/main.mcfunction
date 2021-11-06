#> bitwise:32/unsigned/modulo/main
#   Return the unsigned modulo of IO.P{0, 1}
##
# @params
#   IO.P{0, 1}
#       Two 32-bit integers
# @returns
#   IO.R0
#       32-bit integer
##

function bitwise:32/unsigned/divmod/main
scoreboard players operation R0 IO = R1 IO