#> unit_test:float/redecompose
#   Test the float decomposition and recomposition function
#   Since they are inverses of one another, recompose(decompose(x))=x
##

data modify storage u_test name set value float_redecomposition
function u_test:run/reset

# test 1
scoreboard players set expected u_test 674632674
scoreboard players operation P0 IO = expected u_test
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 2
scoreboard players set expected u_test -764327962
scoreboard players operation P0 IO = expected u_test
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 3
scoreboard players set expected u_test 0
scoreboard players operation P0 IO = expected u_test
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 4
scoreboard players set expected u_test 2147483647
scoreboard players operation P0 IO = expected u_test
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 5
scoreboard players set expected u_test -2147483648
scoreboard players operation P0 IO = expected u_test
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score



function u_test:run/end_set

