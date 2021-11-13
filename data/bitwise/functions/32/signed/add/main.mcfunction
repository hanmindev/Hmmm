#> bitwise:32/signed/add/main
#   Return the sum of io.P[0, 1]
##
# @params
#   io.P[0, 1]
#       Two 32-bit integers
# @returns
#   io.R0
#       32-bit integer
##

scoreboard players operation R0 io = P0 io
scoreboard players operation R0 io += P1 io