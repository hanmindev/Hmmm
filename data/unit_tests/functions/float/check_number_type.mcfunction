#> unit_test:float/check_number_type
#   Test the float check_type function
#

data modify storage u_test name set value float_check_type
function u_test:run/reset

# test 1
scoreboard players set expected u_test 3
scoreboard players set P0 IO 0
scoreboard players set P1 IO -127
scoreboard players set P2 IO 0
function float:32/check_type/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 2
scoreboard players set expected u_test 4
scoreboard players set P0 IO 1
scoreboard players set P1 IO -127
scoreboard players set P2 IO 0
function float:32/check_type/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 3
scoreboard players set expected u_test 1
scoreboard players set P0 IO 0
scoreboard players set P1 IO 128
scoreboard players set P2 IO 0
function float:32/check_type/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 4
scoreboard players set expected u_test 2
scoreboard players set P0 IO 1
scoreboard players set P1 IO 128
scoreboard players set P2 IO 0
function float:32/check_type/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 5
scoreboard players set expected u_test 0
scoreboard players set P0 IO 0
scoreboard players set P1 IO 128
scoreboard players set P2 IO 6
function float:32/check_type/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score

# test 6
scoreboard players set expected u_test 5
scoreboard players set P0 IO 0
scoreboard players set P1 IO 63
scoreboard players set P2 IO 66
function float:32/check_type/main
scoreboard players operation actual u_test = R0 IO
function u_test:run/score





function u_test:run/end_set

