#> unit_tests:float/decompose
#   Test the float decomposition function
##

data modify storage u_test name set value float_decomposition
function u_test:run/reset

# test 1
data modify storage u_test expected set value [0,-127,0]
scoreboard players set P0 IO 0
function float:32/decompose/main

execute store result storage u_test copy int 1 run scoreboard players get R0 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R1 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R2 IO
data modify storage u_test actual append from storage u_test copy

function u_test:run/storage

# test 2
data modify storage u_test expected set value [1,-127,0]
scoreboard players set P0 IO -2147483648
function float:32/decompose/main

execute store result storage u_test copy int 1 run scoreboard players get R0 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R1 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R2 IO
data modify storage u_test actual append from storage u_test copy

function u_test:run/storage

# test 3
data modify storage u_test expected set value [0,128,0]
scoreboard players set P0 IO 2139095040
function float:32/decompose/main

execute store result storage u_test copy int 1 run scoreboard players get R0 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R1 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R2 IO
data modify storage u_test actual append from storage u_test copy

function u_test:run/storage

# test 4
data modify storage u_test expected set value [1,128,0]
scoreboard players set P0 IO -8388608
function float:32/decompose/main

execute store result storage u_test copy int 1 run scoreboard players get R0 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R1 IO
data modify storage u_test actual append from storage u_test copy

execute store result storage u_test copy int 1 run scoreboard players get R2 IO
data modify storage u_test actual append from storage u_test copy

function u_test:run/storage

function u_test:run/end_set

