#> float:32/add/branch11111
# check if result is normalized

# is normalized
# execute if score R2 IO matches 4194304..
execute if score R2 IO matches 4194304.. run scoreboard players remove R2 IO 8388608


# is not normalized
#execute unless score R2 IO matches 4194304.. run function float:32/add/branch111110
