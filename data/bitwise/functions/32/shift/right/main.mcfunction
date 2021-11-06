#> bitwise:32/shift/right/main
#   Performs a rightwards bitwise shift
#
# @params
#   IO.P0
#       32-bit integers
# @returns
#   IO.R0
#       32-bit integer
#

scoreboard players set 0 temp 0
execute if score P0 IO matches ..-1 run function bitwise:32/shift/remove_sign

scoreboard players operation R0 IO = P0 IO
scoreboard players operation R0 IO /= 2 constant
execute if score 0 temp matches 1 run scoreboard players add R0 IO 1073741824