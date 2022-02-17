#> float:32/convert/to_storage/main
#   Return a 32-bit float representation as a storage float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   {io.R0}
#       storage float type
##
scoreboard players add P2 io 8388608
execute if score P0 io matches 1 run scoreboard players operation P2 io *= -1 constant

# quaternary search tree for scale

function float:32/convert/to_storage/b/main