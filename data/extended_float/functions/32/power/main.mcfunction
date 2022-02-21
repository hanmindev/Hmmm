#> extended_float:32/power/main
#   Return the first 32-bit float raised to the power of the second.
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

scoreboard players operation temp 23 = P3 io
scoreboard players operation temp 24 = P4 io
scoreboard players operation temp 25 = P5 io

function extended_float:32/log/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players operation P3 io = temp 23
scoreboard players operation P4 io = temp 24
scoreboard players operation P5 io = temp 25

function float:32/multiply/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/exponential/main