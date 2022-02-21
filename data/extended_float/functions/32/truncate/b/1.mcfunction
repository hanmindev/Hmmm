execute if score P1 io matches 1..2 run function extended_float:32/truncate/b/5
execute if score P1 io matches 3 run scoreboard players operation P2 io %= 1048576 constant
execute if score P1 io matches 4 run scoreboard players operation P2 io %= 524288 constant
execute if score P1 io matches 5..6 run function extended_float:32/truncate/b/8
