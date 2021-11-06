#> float:32/add/branch11111
# check if result is normalized

# is not normalized
execute unless score R2 IO matches 8388608..16777215 run function float:32/add/branch111110

# is normalized
execute if score R2 IO matches 8388608..16777215 run scoreboard players remove R2 IO 8388608

