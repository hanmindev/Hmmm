#> float:32/multiply/branch210
#   Multiply significands
#

# fix sign
scoreboard players set R0 io 0
execute unless score 0 temp = 3 temp run scoreboard players set R0 io 1


# set exponent
scoreboard players operation R1 io = 1 temp

# add implicit bit

execute unless score 4 temp matches 1 run scoreboard players add 2 temp 8388608
execute unless score 4 temp matches 2 run scoreboard players add 5 temp 8388608

# swap such that temp.2 is the denormalized mantissa
execute if score 4 temp matches 2 run function float:32/multiply/branch2101


execute if score R1 io matches -125.. if score 4 temp matches 1..2 run function float:32/multiply/branch2102


# multiply using the factoring thing

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

# set io.R2 to ac
scoreboard players operation R2 io = 0 temp
scoreboard players operation R2 io *= 2 temp
scoreboard players operation R2 io *= 2 constant

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

# right bitshift shift by 3
scoreboard players operation 5 temp /= 2048 constant
scoreboard players operation R2 io += 5 temp

execute if score R2 io matches 16777216.. run function float:32/multiply/branch2100

execute if score R1 io matches -125.. unless score R2 io matches 8388608.. run function float:32/multiply/branch2103

execute if score R1 io matches -126 unless score R2 io matches 8388608.. run scoreboard players set R1 io -127

# remove implicit bit
execute if score 8 temp matches 0 if score R2 io matches 8388608.. run scoreboard players remove R2 io 8388608
