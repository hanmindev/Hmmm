#> float:32/divide/branch1
#   Return 0
#

scoreboard players set R0 io 0
# neg infinity if signs are different
execute unless score 0 temp = 3 temp run scoreboard players set R0 io 1
scoreboard players set R1 io -127
scoreboard players set R2 io 0