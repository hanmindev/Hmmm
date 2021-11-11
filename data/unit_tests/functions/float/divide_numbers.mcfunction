#> unit_tests:float/divide_numbers
#   Test float division
##

data modify storage u_test name set value float_division
function u_test:run/reset

# test 1
# 27504.27734375 / NaN = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1199259045
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 2
# NaN / 27504.27734375 = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 1199259045
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 3
# NaN / inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 4
# NaN / -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO -8388608
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 5
# inf / -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO -8388608
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 6
# inf / -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -8388608
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 7
# -inf / -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO -8388608
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -8388608
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 8
# inf / inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 9
# inf / pos_number = inf
scoreboard players set expected u_test 2139095040

scoreboard players set P0 IO 83283428
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 10
# inf / neg_number = -inf
scoreboard players set expected u_test -8388608

scoreboard players set P0 IO -83283428
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 11
# 2 / 2 = 1
scoreboard players set expected u_test 1065353216

scoreboard players set P0 IO 1073741824
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1073741824
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 12
# 2 / 8 = 16
scoreboard players set expected u_test 1048576000

scoreboard players set P0 IO 1090519040
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1073741824
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 13
# 27 / 3 = 9
scoreboard players set expected u_test 1091567616

scoreboard players set P0 IO 1077936128
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1104674816
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 14
# 66323852 / 7432.64208984375 = 8923.3212890625
scoreboard players set expected u_test 1175153992

scoreboard players set P0 IO 1172849955
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1283260771
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 15
# 66323852 / -7432.64208984375 = -8923.3212890625
scoreboard players set expected u_test -972329656

scoreboard players set P0 IO -974633693
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1283260771
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 15
# 66323852 / -8923.3212890625 = -7432.64208984375
scoreboard players set expected u_test -974633692

scoreboard players set P0 IO -972329656
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1283260771
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 15
# -53567.515625 / -63.63137054443359375 = 841.84130859375
scoreboard players set expected u_test 1146254808

scoreboard players set P0 IO -1031895418
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -950976636
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/divide/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


function u_test:run/end_set
