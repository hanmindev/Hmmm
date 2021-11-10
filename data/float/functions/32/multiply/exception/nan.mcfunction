#> float:32/multiply/exception/nan
#   Throw a NaN exception
##

scoreboard players set R0 IO 0
scoreboard players set R1 IO 128
scoreboard players set R2 IO 1
scoreboard players set 8 temp 1

tellraw @a[tag=exception] [{"text":"[Exception] NaN Value Computed. Use /tag @s remove exception to ignore these messages.","color":"red"}]