#> float:32/divide/branch21
#   Subtract exponents
#

# Subtract exponents, adjust for bias
execute if score 1 temp matches -127 run scoreboard players add 8 temp 1
execute if score 1 temp matches -127 run scoreboard players add 1 temp 1
execute if score 4 temp matches -127 run scoreboard players add 8 temp 2
execute if score 4 temp matches -127 run scoreboard players add 4 temp 1
scoreboard players operation 1 temp -= 4 temp

scoreboard players operation 4 temp = 8 temp
scoreboard players set 8 temp 0
# overflow
execute if score 1 temp matches 129.. run function float:32/divide/exception/overflow
# underflow
execute if score 1 temp matches ..-128 run function float:32/divide/exception/underflow

# if working
execute if score 8 temp matches 0 run function float:32/divide/branch210