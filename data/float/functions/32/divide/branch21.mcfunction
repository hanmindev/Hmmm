#> float:32/divide/branch21
#   Subtract exponents
#

# Subtract exponents, adjust for bias
scoreboard players operation 1 temp -= 4 temp
# overflow
execute if score 1 temp matches 129.. run function float:32/divide/exception/overflow
# underflow
execute if score 1 temp matches ..-128 run function float:32/divide/exception/underflow

# if working
execute if score 8 temp matches 0 run function float:32/divide/branch210