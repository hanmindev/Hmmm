#> bitwise:32/shift/left/main
#   Performs a leftwards bitwise shift
##
# @params
#   io.P0
#       32-bit integers
# @returns
#   io.R0
#       32-bit integer
##

scoreboard players set 0 temp 0
execute if score P0 io matches ..-1 run function bitwise:32/shift/remove_sign

scoreboard players operation R0 io = P0 io
scoreboard players operation R0 io *= 2 constant