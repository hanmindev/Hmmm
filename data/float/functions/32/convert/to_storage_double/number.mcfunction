#> float:32/convert/to_storage_double/number
#   Branch for when the float is a normal number
scoreboard players add P2 io 8388608
execute if score P0 io matches 1 run scoreboard players operation P2 io *= -1 constant

# quaternary search tree for scale

function float:32/convert/to_storage_double/b/main