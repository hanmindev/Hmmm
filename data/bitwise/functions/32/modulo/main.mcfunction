#> bitwise:32/divide/main
#   Return the quotient of IO.P[0, 1]
##
# @params
#   IO.F0 = [0, 1]
#       Whether the 32-bit integers are signed or unsigned
#   IO.P[0, 1]
#       Two 32-bit integers
# @returns
#   IO.R0
#       32-bit integer
##


execute if score F0 IO matches 0 run function bitwise:32/unsigned/divide/main
execute if score F0 IO matches 1 run function bitwise:32/signed/divide/main