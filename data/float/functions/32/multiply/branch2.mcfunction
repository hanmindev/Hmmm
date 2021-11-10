#> float:32/multiply/branch2
#   Check for infinity
#

execute if score 6 temp matches 1..2 run scoreboard players set 8 temp 1
execute if score 7 temp matches 1..2 run scoreboard players set 8 temp 1

execute if score 8 temp matches 1 run function float:32/multiply/branch20
execute if score 8 temp matches 0 run function float:32/multiply/branch21