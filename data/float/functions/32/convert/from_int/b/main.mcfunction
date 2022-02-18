execute if score P0 io matches 0..127 run function float:32/convert/from_int/b/1
execute if score P0 io matches 128..32767 run function float:32/convert/from_int/b/2
execute if score P0 io matches 32768..8388607 run function float:32/convert/from_int/b/3
execute if score P0 io matches 8388608..2147483647 run function float:32/convert/from_int/b/4
