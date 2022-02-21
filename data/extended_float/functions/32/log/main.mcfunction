#> extended_float:32/log/main
#   Return the natural logarithm of a float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##
#   F0 = temp.[0, 1, 2], io.P[0, 1, 2]
#   F1 = temp.[3, 4, 5], io.P[3, 4, 5]
##
# @modifies temp.[0..22]


# copy variables io.P[0..5], temp.[0..10]
# execute store result storage hmmm:variables temp int 1 run scoreboard players get P0 io
# data modify storage hmmm:variables temp_stack append from storage hmmm:variables temp
# execute store result storage hmmm:variables temp int 1 run scoreboard players get P1 io
# data modify storage hmmm:variables temp_stack append from storage hmmm:variables temp
# execute store result storage hmmm:variables temp int 1 run scoreboard players get P2 io
# data modify storage hmmm:variables temp_stack append from storage hmmm:variables temp
scoreboard players set 0 temp 1
execute if score P0 io matches 1 run function extended_float:32/log/negative
execute if score 0 temp matches 1 if score P0 io matches 0 if score P1 io matches -127 if score P2 io matches 0 run function extended_float:32/log/negative
execute if score 0 temp matches 1 if score P0 io matches 0 run function extended_float:32/log/positive