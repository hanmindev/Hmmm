#> unit_tests:float/add_numbers
#   Test float addition
##

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

# test 2
# 64317.64453125 + 27504.27734375 = 91821.921875
scoreboard players set expected u_test 1202935542

scoreboard players set P0 IO 1199259045
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1188487310
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

# test 3
# 27504.27734375 + -64317.64453125 = -36813.3671875
scoreboard players set expected u_test -955265698

scoreboard players set P0 IO 1188487310
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -948224603
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

# test 4
# -64317.64453125 + 27504.27734375 = -36813.3671875
scoreboard players set expected u_test -955265698

scoreboard players set P0 IO -948224603
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1188487310
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

# test 5
# inf + inf = inf
scoreboard players set expected u_test 2139095040

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
function float:32/add/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 6
# -inf + -inf = -inf
scoreboard players set expected u_test -8388608

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
function float:32/add/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 7
# inf + -inf = NaN
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
function float:32/add/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 8
# -inf + inf = NaN
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
function float:32/add/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 9
# NaN + -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -8388608
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

# test 10
# -inf + NaN = NaN
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
function float:32/add/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 11
# NaN + anything = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 7123474
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

# test 11
# anything + NaN  = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 7123474
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095041
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

# test 12
# anything - NaN = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 7123474
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/subtract/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 13
# anything - NaN = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 IO 7123474
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095041
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/subtract/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score

# test 14
# -5767.21630859375 - -74327.125 = 68559.9140625
scoreboard players set expected u_test 1199958005

scoreboard players set P0 IO -946787440
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -978044485
function float:32/decompose/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/subtract/main
scoreboard players operation P0 IO = R0 IO
scoreboard players operation P1 IO = R1 IO
scoreboard players operation P2 IO = R2 IO
function float:32/recompose/main
scoreboard players operation actual u_test = R0 IO

function u_test:run/score


# test 15
# -5767.21630859375 + small number = -5767.21630859375
scoreboard players set expected u_test -978044485

scoreboard players set P0 IO 1
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO -978044485
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

# test 15
# small number + -5767.21630859375 = -5767.21630859375
scoreboard players set expected u_test -978044485

scoreboard players set P0 IO -978044485
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1
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


# test 16
# small number + 64327.234783 = 64327.234783
scoreboard players set expected u_test 1199261500

scoreboard players set P0 IO 1199261500
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 3177321
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

# test 17
# 64327.234783 + small number = 64327.234783
scoreboard players set expected u_test 1199261500

scoreboard players set P0 IO 3177321
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1199261500
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

# test 18
# small number + small number = something small
scoreboard players set expected u_test 8388609

scoreboard players set P0 IO 1
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1
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

# test 19
# inf + 6 = inf
scoreboard players set expected u_test 2139095040

scoreboard players set P0 IO 1086324736
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 2139095040
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

# test 20
# 6 + inf = inf
scoreboard players set expected u_test 2139095040

scoreboard players set P0 IO 2139095040
function float:32/decompose/main
scoreboard players operation P3 IO = R0 IO
scoreboard players operation P4 IO = R1 IO
scoreboard players operation P5 IO = R2 IO
scoreboard players set P0 IO 1086324736
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
