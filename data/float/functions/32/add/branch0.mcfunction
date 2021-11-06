#> float:32/add/branch0
#   Sets IO.R{0, 1, 2} to IO.P{3, 4, 5}
##

scoreboard players operation R0 IO = P3 IO
scoreboard players operation R1 IO = P4 IO
scoreboard players operation R2 IO = P5 IO

scoreboard players set 6 temp 1