#> extended_float:32/acos/main
#   Return the arccos of the 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..19]

scoreboard players add P0 io 1
execute if score P0 io matches 2 run scoreboard players set P0 io 0
function extended_float:32/asin/main

scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 4788187

function float:32/add/main