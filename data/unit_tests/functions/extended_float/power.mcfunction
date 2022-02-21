#> unit_tests:extended_float/power
#   Test float power
##

data modify storage u_test name set value float_power
function u_test:run/reset

# test 1
# 2^2=4
scoreboard players set expected u_test 1082130432

scoreboard players set P0 io 1073741824
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1073741824
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/add/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score



function u_test:run/end_set
