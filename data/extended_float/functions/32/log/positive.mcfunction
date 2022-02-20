#> extended_float:32/log/positive
#   Compute the logarithm

# save for later

scoreboard players operation 9 temp = P2 io

# turn exponent int into float
scoreboard players operation P0 io = P1 io
function float:32/convert/from_int/main

# set io.P[0..2] from io R[0..2] if the main function changes

# ln2 -> 1060205080
scoreboard players set P3 io 0
scoreboard players set P4 io -1
scoreboard players set P5 io 3240472

# multiply exponent by ln2
function float:32/multiply/main

# save result of multiplying exponent to temp.[11..13]
scoreboard players operation 11 temp = R0 io
scoreboard players operation 12 temp = R1 io
scoreboard players operation 13 temp = R2 io

# turn mantissa to float (io.P[0,1]=0, io.P2=mantissa)
scoreboard players set P0 io 0
scoreboard players set P1 io 0
scoreboard players operation P2 io = 9 temp

# a = 0.67311669056
scoreboard players set P3 io 0
scoreboard players set P4 io -1
scoreboard players set P5 io 2904416

# multiply these together
function float:32/multiply/main

# save result to io.P[0..2]
scoreboard players set P0 io 0
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

# subtract 1
scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 0

function float:32/subtract/main

# initial constants

# save this to temp.[14..16] This is (ax-1)
scoreboard players operation 14 temp = R0 io
scoreboard players operation 15 temp = R1 io
scoreboard players operation 16 temp = R2 io

# make a duplicate copy at temp.[17..19]. This is (ax-1)^i
scoreboard players operation 17 temp = 14 temp
scoreboard players operation 18 temp = 15 temp
scoreboard players operation 19 temp = 16 temp

# accumulator at temp.[20..22] (copy temp.[14..16])) This is the sum
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# ✅ correct up to here

# well, 0.00967503584 vs 0.00967502593994

# i=2

# calculate exponent for i=2
function extended_float:32/log/calculate_exponent

# divide it by 2 (subtract 1 from exponent)
scoreboard players remove R1 io 1

# subtract it from accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/subtract/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# i=3

# ✅ correct up to here

# calculate exponent for i=3
function extended_float:32/log/calculate_exponent

# divide it by 3
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 1
scoreboard players set P5 io 4194304
function float:32/divide/main

# add it to accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/add/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# i=4

# calculate exponent for i=4
function extended_float:32/log/calculate_exponent

# divide it by 4 (subtract 2 from exponent)
scoreboard players remove R1 io 2

# subtract it from accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/subtract/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# i=5

# calculate exponent for i=5
function extended_float:32/log/calculate_exponent

# divide it by 5
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 2
scoreboard players set P5 io 2097152
function float:32/divide/main

# add it to accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/add/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io


# i=6

# calculate exponent for i=6
function extended_float:32/log/calculate_exponent

# divide it by 6
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 2
scoreboard players set P5 io 4194304
function float:32/divide/main

# subtract it from accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/subtract/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# i=7

# calculate exponent for i=7
function extended_float:32/log/calculate_exponent

# divide it by 7
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

scoreboard players set P3 io 0
scoreboard players set P4 io 2
scoreboard players set P5 io 6291456
function float:32/divide/main

# add it to accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/add/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# i=8

# calculate exponent for i=4
function extended_float:32/log/calculate_exponent

# divide it by 8 (subtract 3 from exponent)
scoreboard players remove R1 io 3

# subtract it from accumulator
scoreboard players operation P0 io = 20 temp
scoreboard players operation P1 io = 21 temp
scoreboard players operation P2 io = 22 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io
function float:32/subtract/main

# set this to the accumulator
scoreboard players operation 20 temp = R0 io
scoreboard players operation 21 temp = R1 io
scoreboard players operation 22 temp = R2 io

# If you need even more precision

# # i=9

# # calculate exponent for i=9
# function extended_float:32/log/calculate_exponent

# # divide it by 9
# scoreboard players operation P0 io = R0 io
# scoreboard players operation P1 io = R1 io
# scoreboard players operation P2 io = R2 io

# scoreboard players set P3 io 0
# scoreboard players set P4 io 3
# scoreboard players set P5 io 1048576
# function float:32/divide/main

# # add it to accumulator
# scoreboard players operation P0 io = 20 temp
# scoreboard players operation P1 io = 21 temp
# scoreboard players operation P2 io = 22 temp

# scoreboard players operation P3 io = R0 io
# scoreboard players operation P4 io = R1 io
# scoreboard players operation P5 io = R2 io
# function float:32/add/main

# # set this to the accumulator
# scoreboard players operation 20 temp = R0 io
# scoreboard players operation 21 temp = R1 io
# scoreboard players operation 22 temp = R2 io


# # i=10

# # calculate exponent for i=10
# function extended_float:32/log/calculate_exponent

# # divide it by 10
# scoreboard players operation P0 io = R0 io
# scoreboard players operation P1 io = R1 io
# scoreboard players operation P2 io = R2 io

# scoreboard players set P3 io 0
# scoreboard players set P4 io 3
# scoreboard players set P5 io 2097152
# function float:32/divide/main

# # subtract it from accumulator
# scoreboard players operation P0 io = 20 temp
# scoreboard players operation P1 io = 21 temp
# scoreboard players operation P2 io = 22 temp

# scoreboard players operation P3 io = R0 io
# scoreboard players operation P4 io = R1 io
# scoreboard players operation P5 io = R2 io
# function float:32/subtract/main



# This is the final result so don't set it to temp.[20..22] but rather set it to io P.[0..2]
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

# ln(a), a=0.67311669056: 
scoreboard players set P3 io 1
scoreboard players set P4 io -2
scoreboard players set P5 io 4893463

# subtract to finally yield the logarithm of the mantissa + implicit bit
function float:32/subtract/main

# add the log of exponent and mantissa together

scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp

scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

function float:32/add/main

# this is a monster function