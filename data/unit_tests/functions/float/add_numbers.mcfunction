#> unit_tests:float/add_numbers
#   Test float addition
##

data modify storage u_test name set value float_addition
function u_test:run/reset

# test 1
# 27504.27734375 + 64317.64453125 = 91821.921875
scoreboard players set expected u_test 1202935542

scoreboard players set P0 io 1188487310
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1199259045
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

# test 2
# 64317.64453125 + 27504.27734375 = 91821.921875
scoreboard players set expected u_test 1202935542

scoreboard players set P0 io 1199259045
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1188487310
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

# test 3
# 27504.27734375 + -64317.64453125 = -36813.3671875
scoreboard players set expected u_test -955265698

scoreboard players set P0 io 1188487310
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -948224603
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

# test 4
# -64317.64453125 + 27504.27734375 = -36813.3671875
scoreboard players set expected u_test -955265698

scoreboard players set P0 io -948224603
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1188487310
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

# test 5
# inf + inf = inf
scoreboard players set expected u_test 2139095040

scoreboard players set P0 io 2139095040
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 2139095040
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

# test 6
# -inf + -inf = -inf
scoreboard players set expected u_test -8388608

scoreboard players set P0 io -8388608
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -8388608
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

# test 7
# inf + -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io 2139095040
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -8388608
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

# test 8
# -inf + inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io -8388608
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 2139095040
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


# test 9
# NaN + -inf = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io 2139095041
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -8388608
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

# test 10
# -inf + NaN = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io -8388608
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 2139095041
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

# test 11
# NaN + anything = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io 2139095041
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 7123474
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

# test 12
# anything + NaN  = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io 7123474
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 2139095041
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

# test 13
# anything - NaN = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io 2139095041
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 7123474
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 14
# anything - NaN = NaN
scoreboard players set expected u_test 2139095041

scoreboard players set P0 io 7123474
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 2139095041
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 15
# -5767.21630859375 - -74327.125 = 68559.9140625
scoreboard players set expected u_test 1199958005

scoreboard players set P0 io -946787440
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -978044485
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score


# test 16
# -5767.21630859375 + small number = -5767.21630859375
scoreboard players set expected u_test -978044485

scoreboard players set P0 io 1
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io -978044485
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

# test 17
# small number + -5767.21630859375 = -5767.21630859375
scoreboard players set expected u_test -978044485

scoreboard players set P0 io -978044485
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1
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


# test 18
# small number + 64327.234783 = 64327.234783
scoreboard players set expected u_test 1199261500

scoreboard players set P0 io 1199261500
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 3177321
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

# test 19
# 64327.234783 + small number = 64327.234783
scoreboard players set expected u_test 1199261500

scoreboard players set P0 io 3177321
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1199261500
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

# test 20
# small number + small number = something small
scoreboard players set expected u_test 2

scoreboard players set P0 io 1
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1
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


# test 21
# small number + small number = something small
scoreboard players set expected u_test 7

scoreboard players set P0 io 1
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 6
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



# test 22
# small number + small number = something small
scoreboard players set expected u_test 8388609

scoreboard players set P0 io 1
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 8388608
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

# test 23
# inf + 6 = inf
scoreboard players set expected u_test 2139095040

scoreboard players set P0 io 1086324736
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 2139095040
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

# test 24
# 6 + inf = inf
scoreboard players set expected u_test 2139095040

scoreboard players set P0 io 2139095040
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1086324736
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

# test 25
# 6 + 0 = 6
scoreboard players set expected u_test 1086324736

scoreboard players set P0 io 0
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1086324736
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

# test 26
# 0 + 6 = 6
scoreboard players set expected u_test 1086324736

scoreboard players set P0 io 1086324736
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 0
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

# test 27
# 10 + 2 = 12
scoreboard players set expected u_test 1094713344

scoreboard players set P0 io 1073741824
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1092616192
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

# test 28
# 2 + 10 = 12
scoreboard players set expected u_test 1094713344

scoreboard players set P0 io 1092616192
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

# test 29
# 4 + 10 = 12
scoreboard players set expected u_test 1096810496

scoreboard players set P0 io 1092616192
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1082130432
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

# test 30
# 1 + 10 = 11
scoreboard players set expected u_test 1093664768

scoreboard players set P0 io 1092616192
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1065353216
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

# test 31
# 1 + 100 = 101
scoreboard players set expected u_test 1120534528

scoreboard players set P0 io 1120403456
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1065353216
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

# test 32
# 1 + 821 = 822
scoreboard players set expected u_test 1145929728

scoreboard players set P0 io 1145913344
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1065353216
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

# test 33
# 821 - 1 = 820
scoreboard players set expected u_test 1145896960

scoreboard players set P0 io 1065353216
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1145913344
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 34
# 10 - 10 = 0
scoreboard players set expected u_test 0

scoreboard players set P0 io 1092616192
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1092616192
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 35
# 1821 - 1 = 1820
scoreboard players set expected u_test 1155760128

scoreboard players set P0 io 1065353216
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1155768320
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 36
# 11821 - 1 = 11820
scoreboard players set expected u_test 1178120192

scoreboard players set P0 io 1065353216
function float:32/decompose/main
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
scoreboard players set P0 io 1178121216
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/subtract/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

function u_test:run/end_set
