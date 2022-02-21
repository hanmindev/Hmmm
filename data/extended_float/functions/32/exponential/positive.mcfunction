scoreboard players set P3 io 0
scoreboard players set P4 io 7
scoreboard players set P5 io 0

function float:32/compare/greater_equal/main

# if it is greater, set to positive infinity
execute if score R0 io matches 1 run function extended_float:32/exponential/pos_inf
# if it isn't, do nothing (in this function)