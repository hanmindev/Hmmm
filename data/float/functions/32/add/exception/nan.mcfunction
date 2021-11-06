#> float:32/add/exception/nan
#   Throw a NaN exception
##

scoreboard players set 6 temp 1
scoreboard players set R0 IO 0
scoreboard players set R1 IO 128
scoreboard players set R2 IO 1

tellraw @a[tag=exception] [{"text":"[Exception] NaN Value Computed. Use /tag @s remove exception to ignore these messages.","color":"red"}]