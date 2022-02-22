scoreboard players set P0 io 1
scoreboard players set P1 io 1
scoreboard players set P2 io 4194304

scoreboard players set P3 io 0
scoreboard players set P4 io 2
scoreboard players set P5 io 2097152

# function extended_float:32/power/main


scoreboard players operation 0 temp = P0 io
scoreboard players operation 1 temp = P1 io
scoreboard players operation 2 temp = P2 io

scoreboard players operation 3 temp = P3 io
scoreboard players operation 4 temp = P4 io
scoreboard players operation 5 temp = P5 io

scoreboard players operation P0 io = P3 io
scoreboard players operation P1 io = P4 io
scoreboard players operation P2 io = P5 io

function extended_float:32/float_type/main

scoreboard players operation P0 io = 0 temp
scoreboard players operation P1 io = 1 temp
scoreboard players operation P2 io = 2 temp

scoreboard players operation P3 io = 3 temp
scoreboard players operation P4 io = 4 temp
scoreboard players operation P5 io = 5 temp

scoreboard players set 0 temp 1
execute if score R0 io matches 2 run function extended_float:32/power/not_integer_exponent/main
##execute if score 0 temp matches 1 run function extended_float:32/power/integer_exponent/main
    scoreboard players set 0 temp 1
    execute if score P4 io matches ..-1 run function extended_float:32/power/integer_exponent/zero
    ##execute if score 0 temp matches 1 if score P0 io matches 1 run function extended_float:32/power/integer_exponent/negative
        scoreboard players operation 9 temp = P3 io
        scoreboard players operation 10 temp = P4 io
        scoreboard players operation 11 temp = P5 io

        scoreboard players operation P3 io = P0 io
        scoreboard players operation P4 io = P1 io
        scoreboard players operation P5 io = P2 io

        scoreboard players set P0 io 0
        scoreboard players set P1 io 0
        scoreboard players set P2 io 0

        function float:32/divide/main

        scoreboard players operation P0 io = R0 io
        scoreboard players operation P1 io = R1 io
        scoreboard players operation P2 io = R2 io

        scoreboard players set P3 io 0
        scoreboard players operation P4 io = 10 temp
        scoreboard players operation P5 io = 11 temp

        ##function extended_float:32/power/integer_exponent/main

        #scoreboard players set 0 temp 0

    # execute if score 0 temp matches 1 if score P4 io matches 0 run function extended_float:32/power/integer_exponent/one
    # execute if score 0 temp matches 1 run function extended_float:32/power/integer_exponent/check_even

    # scoreboard players set 0 temp 0