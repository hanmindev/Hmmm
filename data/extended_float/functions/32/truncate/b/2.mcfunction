execute if score P1 io matches 7 run scoreboard players operation P2 io %= 65536 constant
execute if score P1 io matches 8 run scoreboard players operation P2 io %= 32768 constant
execute if score P1 io matches 9 run scoreboard players operation P2 io %= 16384 constant
execute if score P1 io matches 10..11 run function extended_float:32/truncate/b/12
