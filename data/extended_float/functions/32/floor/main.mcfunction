#> extended_float:32/floor/main
#   Returns a floored float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..10] (if input is negative)

scoreboard players operation R0 io = P0 io
scoreboard players operation R1 io = P1 io
scoreboard players operation R2 io = P2 io

execute if score P1 io matches 1..22 run function extended_float:32/floor/truncate
execute if score P1 io matches ..0 run function extended_float:32/floor/zero

execute if score R0 io matches 1 if score P1 io matches ..22 unless score P2 io matches 0 run function extended_float:32/floor/sub_1