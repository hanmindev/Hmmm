scoreboard players set P3 io 1
scoreboard players set P4 io 7
scoreboard players set P5 io 0

function float:32/compare/less_equal/main

# if it is less, set to 0
execute if score R0 io matches 1 run function extended_float:32/exponential/zero
# if it isn't, do nothing (in this function)