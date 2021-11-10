scoreboard players reset * temp
scoreboard players set 2 temp 11315378
scoreboard players set 5 temp 10839207



# calculate ac
# get a and b (temp.0, temp.1)
scoreboard players operation 0 temp = 2 temp
scoreboard players operation 1 temp = 2 temp
scoreboard players operation 0 temp /= 4096 constant
scoreboard players operation 1 temp %= 4096 constant

# get c and d (temp.2, temp.3)
scoreboard players operation 2 temp = 5 temp
scoreboard players operation 3 temp = 5 temp
scoreboard players operation 2 temp /= 4096 constant
scoreboard players operation 3 temp %= 4096 constant

# set IO.R2 to ac
scoreboard players operation R2 IO = 0 temp
scoreboard players operation R2 IO *= 2 temp
scoreboard players operation R2 IO *= 2 constant

# bc
# set temp.5 to bc
scoreboard players operation 5 temp = 1 temp
scoreboard players operation 5 temp *= 2 temp

# ad
# set temp.5 to ad
scoreboard players operation 6 temp = 0 temp
scoreboard players operation 6 temp *= 3 temp
# add to temp.0
scoreboard players operation 5 temp += 6 temp

# bd/2^12
# set temp.5 to bd/2^12
scoreboard players operation 6 temp = 1 temp
scoreboard players operation 6 temp *= 3 temp
scoreboard players operation 6 temp /= 4096 constant
# add to temp.5
scoreboard players operation 5 temp += 6 temp
scoreboard players operation 5 temp /= 2048 constant

# right bitshift shift by 3
#scoreboard players operation 5 temp /= 2048 constant
scoreboard players operation R2 IO += 5 temp

execute if score R2 IO matches 16777216.. run function float:32/multiply/branch2100


# remove implicit bit
scoreboard players remove R2 IO 8388608