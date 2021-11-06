#> float:32/add/branch10
#   Sets IO.R{0, 1, 2} to IO.P{0, 1, 2}
#

scoreboard players operation R0 IO = P0 IO
scoreboard players operation R1 IO = P1 IO
scoreboard players operation R2 IO = P2 IO

scoreboard players set 6 temp 1