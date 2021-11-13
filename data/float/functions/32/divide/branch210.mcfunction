#> float:32/divide/branch210
#   divide significands
#

# fix sign
scoreboard players set R0 io 0
execute unless score 0 temp = 3 temp run scoreboard players set R0 io 1

# set exponent


scoreboard players operation R1 io = 1 temp
# add implicit bit
execute unless score 4 temp matches 1 unless score 4 temp matches 3 run scoreboard players add 2 temp 8388608
execute unless score 4 temp matches 2 unless score 4 temp matches 3 run scoreboard players add 5 temp 8388608

execute unless score 4 temp matches 0 unless score 4 temp matches 2 run function float:32/divide/branch2103
execute unless score 4 temp matches 0 unless score 4 temp matches 1 run function float:32/divide/branch2104

# divide using long division

scoreboard players operation 0 temp = 2 temp
scoreboard players operation 1 temp = 5 temp
scoreboard players set R2 io 0
scoreboard players operation 0 temp *= 64 constant
scoreboard players operation 1 temp *= 64 constant

# do this 24 times
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102
function float:32/divide/branch2102

execute if score R2 io matches ..8388608 run function float:32/divide/branch2101
execute if score 0 temp >= 1 temp run scoreboard players add R2 io 1

# fix denormalized numbers
execute if score R1 io matches ..-127 run function float:32/divide/branch2105
# return 0 if number is very small
execute if score R1 io matches ..-127 run function float:32/divide/branch1
# return infinity if number is very large
execute if score R1 io matches 129.. run function float:32/divide/branch20

execute if score 8 temp matches 0 if score R1 io matches -126 unless score R0 io matches 8388608.. run scoreboard players set R1 io -127

# remove implicit bit
execute if score 8 temp matches 0 if score R1 io matches -126.. run scoreboard players remove R2 io 8388608