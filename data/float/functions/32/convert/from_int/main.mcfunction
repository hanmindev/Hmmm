scoreboard players set R0 io 0
execute if score P0 io matches ..-1 run function float:32/convert/from_int/negative

scoreboard players operation P2 io = P0 io
function float:32/convert/from_int/b/main
scoreboard players operation P0 io = R0 io

scoreboard players remove P2 io 8388608

function float:32/recompose/main