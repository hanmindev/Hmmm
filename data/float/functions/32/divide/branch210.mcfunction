#> float:32/divide/branch210
#   divide significands
#

# fix sign
scoreboard players set R0 IO 0
execute unless score 0 temp = 3 temp run scoreboard players set R0 IO 1

# add implicit bit
scoreboard players add 2 temp 8388608
scoreboard players add 5 temp 8388608

# set exponent
scoreboard players operation R1 IO = 1 temp

# divide using long division

scoreboard players operation 0 temp = 2 temp
scoreboard players operation 1 temp = 5 temp
scoreboard players set R2 IO 0
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

execute if score R2 IO matches ..8388608 run function float:32/divide/branch2101
execute if score 0 temp >= 1 temp run scoreboard players add R2 IO 1


# remove implicit bit
scoreboard players remove R2 IO 8388608