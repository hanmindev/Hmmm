#> float:32/compare/less/branch0
#   Signs are the same
#

execute if score P1 io < P4 io run scoreboard players set R0 io 1
execute if score P1 io = P4 io if score P2 io < P5 io run scoreboard players set R0 io 1