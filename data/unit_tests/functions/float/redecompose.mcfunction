#> unit_tests:float/redecompose
#   Test the float decomposition and recomposition function
#   Since they are inverses of one another, recompose(decompose(x))=x
##

data modify storage u_test name set value float_redecomposition
function u_test:run/reset

# test 1
scoreboard players set expected u_test 674632674
scoreboard players operation P0 io = expected u_test
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 2
scoreboard players set expected u_test -764327962
scoreboard players operation P0 io = expected u_test
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 3
scoreboard players set expected u_test 0
scoreboard players operation P0 io = expected u_test
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 4
scoreboard players set expected u_test 2147483647
scoreboard players operation P0 io = expected u_test
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score

# test 5
scoreboard players set expected u_test -2147483648
scoreboard players operation P0 io = expected u_test
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score


# test 6
scoreboard players set expected u_test 0
scoreboard players operation P0 io = expected u_test
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io
function u_test:run/score



function u_test:run/end_set

