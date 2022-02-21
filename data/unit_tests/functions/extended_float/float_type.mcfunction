#> unit_tests:extended_float/float_type
#   Test the float check_type function
##

data modify storage u_test name set value extended_float_check_type
function u_test:run/reset

# test 1
# 0 is an even integer
scoreboard players set expected u_test 0

scoreboard players set P0 io 0
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 2
# 1 is an odd integer
scoreboard players set expected u_test 1

scoreboard players set P0 io 1065353216
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 3
# 2 is an even integer
scoreboard players set expected u_test 0

scoreboard players set P0 io 1073741824
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 4
# 6427 is an odd integer
scoreboard players set expected u_test 1

scoreboard players set P0 io 1170790400
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 5
# 642.7 is not an integer
scoreboard players set expected u_test 2

scoreboard players set P0 io 1142992077
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 6
# 56498321567932617853789215978 is an even integer
scoreboard players set expected u_test 0

scoreboard players set P0 io 1865846353
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 7
# 0.5 is an not an integer
scoreboard players set expected u_test 2

scoreboard players set P0 io 1056964608
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function extended_float:32/float_type/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

function u_test:run/end_set

