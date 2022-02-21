#> extended_float:32/root/main
#   Return the first 32-bit float-th root of the second 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..25]

scoreboard players operation 12 temp = P0 io
scoreboard players operation 13 temp = P1 io
scoreboard players operation 14 temp = P2 io

scoreboard players operation 9 temp = P3 io
scoreboard players operation 10 temp = P4 io
scoreboard players operation 11 temp = P5 io

scoreboard players operation P3 io = P0 io
scoreboard players operation P4 io = P1 io
scoreboard players operation P5 io = P2 io

scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players set P2 io 0

function float:32/divide/main

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

scoreboard players operation P0 io = 9 temp
scoreboard players operation P1 io = 10 temp
scoreboard players operation P2 io = 11 temp

scoreboard players set 0 temp 1
execute if score P0 io matches 0 run function extended_float:32/power/positive_base
execute if score 0 temp matches 1 run function extended_float:32/root/negative_radicand