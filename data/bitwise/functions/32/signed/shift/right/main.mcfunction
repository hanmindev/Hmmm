#> bitwise:32/signed/shift/right/main
#   Performs a rightwards bitwise shift
##
# @params
#   io.P0
#       32-bit integers
# @returns
#   io.R0
#       32-bit integer
##

scoreboard players set 0 temp 0
execute if score P0 io matches ..-1 run function bitwise:32/signed/shift/remove_sign

scoreboard players operation R0 io = P0 io
scoreboard players operation R0 io /= 2 constant
execute if score 0 temp matches 1 run scoreboard players add R0 io 1073741824