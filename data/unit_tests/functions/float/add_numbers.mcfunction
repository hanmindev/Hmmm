#> unit_test:float/add_numbers
#   Test float addition
#

data modify storage u_test name set value float_addition
function u_test:run/reset

# test 1
# 27504.27734375 + 64317.64453125 = 91821.921875
scoreboard players set expected u_test 1202935542

scoreboard players set P0 IO 1188487310
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1199259045
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/add/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


function u_test:run/end_set

