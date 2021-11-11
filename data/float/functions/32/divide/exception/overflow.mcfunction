#> float:32/divide/exception/overflow
#   Throw a overflow exception
##

scoreboard players set 8 temp 1

tellraw @a[tag=exception] [{"text":"[Exception] Exponent Overflow. Use /tag @s remove exception to ignore these messages.","color":"red"}]