#> extended_float:32/power/not_integer_exponent/main
#   Case when the exponent is not an integer
#

scoreboard players set 0 temp 1
execute if score P0 io matches 0 run function extended_float:32/power/positive_base
execute if score 0 temp matches 1 run function extended_float:32/power/negative_base
scoreboard players set 0 temp 0