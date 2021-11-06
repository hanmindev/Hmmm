#> bitwise:32/add/main
#   Return the sum of IO.P{0, 1}
##
# @params
#   IO.P{0, 1}
#       Two 32-bit integers
# @returns
#   IO.R0
#       32-bit integer
##

scoreboard players operation R0 IO = P0 IO
scoreboard players operation R0 IO += P1 IO