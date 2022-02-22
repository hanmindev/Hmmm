#> extended_float:32/truncate/main
#   Returns a truncated float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#

scoreboard players operation R0 io = P0 io
scoreboard players operation R1 io = P1 io
scoreboard players operation R2 io = P2 io

function extended_float:32/truncate/b/main

execute if score P1 io matches 1..22 run scoreboard players operation R2 io -= P2 io
execute if score P1 io matches ..0 run function extended_float:32/truncate/zero