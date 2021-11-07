#> float:32/add/exception/overflow
#   Throw a overflow exception
##

scoreboard players set 6 temp 1

tellraw @a[tag=exception] [{"text":"[Exception] Significand Overflow. Use /tag @s remove exception to ignore these messages.","color":"red"}]