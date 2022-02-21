#> extended_float:32/exponential/floor_nonzero
# Sets the exponent of a float to another float expressed as an integer
#

# Add implicit bit to mantissa
scoreboard players add P2 io 8388608
# Turn float exponent into integer
execute if score P1 io matches 6 run scoreboard players operation P2 io /= 131072 constant
execute if score P1 io matches 5 run scoreboard players operation P2 io /= 262144 constant
execute if score P1 io matches 4 run scoreboard players operation P2 io /= 524288 constant
execute if score P1 io matches 3 run scoreboard players operation P2 io /= 1048576 constant
execute if score P1 io matches 2 run scoreboard players operation P2 io /= 2097152 constant
execute if score P1 io matches 1 run scoreboard players operation P2 io /= 4194304 constant
execute if score P1 io matches 0 run scoreboard players operation P2 io /= 8388608 constant
# Now P2 is an integer
execute if score P0 io matches 1 run scoreboard players operation P2 io *= -1 constant

# Set P2 as the exponent for a new number temp.[11..13]
scoreboard players set 11 temp 0
scoreboard players operation 12 temp = P2 io
scoreboard players set 13 temp 0