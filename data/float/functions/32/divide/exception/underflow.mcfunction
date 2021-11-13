#> float:32/divide/exception/underflow
#   Throw a underflow exception
##

function float:32/divide/branch1
scoreboard players set 8 temp 1

tellraw @a[tag=exception] [{"text":"[Exception] Exponent Underflow. Use /tag @s remove exception to ignore these messages.","color":"red"}]