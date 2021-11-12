#> unit_tests:float/convert_to_storage
#   Test the float storage conversion function
##

data modify storage u_test name set value float_storage_conversion
function u_test:run/reset


# test 1
# 01000101101000000001110111101110 -> 5123.7412109375
data modify storage u_test expected set value 5123.7412109375f

scoreboard players set P0 io 1168121326
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/convert/to_storage/main
data modify storage u_test actual set from storage io R0

function u_test:run/storage


# test 2
# 01110100010010100101011010101001 -> 64123635388758186968546937929728
data modify storage u_test expected set value 64123635388758186968546937929728f

scoreboard players set P0 io 1951028905
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/convert/to_storage/main
data modify storage u_test actual set from storage io R0

function u_test:run/storage





# test 3
# 00010000000000000000000000000001 -> 2.52435519763e-29f
data modify storage u_test expected set value 2.52435519763e-29f

scoreboard players set P0 io 268435457
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function float:32/convert/to_storage/main
data modify storage u_test actual set from storage io R0

function u_test:run/storage






function u_test:run/end_set

