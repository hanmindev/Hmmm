#> extended_float:32/ceiling/main
#   Returns a ceilinged float
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

execute if score P1 io matches 0..22 run function extended_float:32/floor/truncate

scoreboard players set 0 temp 1
execute if score P0 io matches 0 if score P1 io matches ..-1 run function extended_float:32/ceiling/one
execute if score P0 io matches 1 if score P1 io matches ..-1 run function extended_float:32/ceiling/zero
execute if score 0 temp matches 1 if score R0 io matches 0 if score P1 io matches ..22 unless score P2 io matches 0 run function extended_float:32/ceiling/add_1