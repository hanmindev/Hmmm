#> extended_float:32/exponential/non_zero
#   e^x

# Convert e^x to 2^((1/ln2)(2^(E-23)(2^23+m)))

# Get (2^(E-23)(2^23+m)) (already loaded into io.P[0..2])

# Multiply this by 1/ln2

scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 3713595

function float:32/multiply/main

# Set io.P[1..2] from io.R[1..2]
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

# Now we have sign((1/ln2)(2^(E-23))(2^23+m)

# save this to temp.[0..2]
scoreboard players operation 11 temp = P0 io
scoreboard players operation 12 temp = P1 io
scoreboard players operation 13 temp = P2 io

# Split integer and decimal part (note decimal is in [0,1))

function extended_float:32/floor/main

# I+d
scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp

# integer part
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

# Save integer part
scoreboard players operation 11 temp = R0 io
scoreboard players operation 12 temp = R1 io
scoreboard players operation 13 temp = R2 io

function float:32/subtract/main
# save decimal part
scoreboard players operation 14 temp = R0 io
scoreboard players operation 15 temp = R1 io
scoreboard players operation 16 temp = R2 io

# Check if exponent is greater than what floats can handle:
scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp

# If positive, check if integer part is greater or equal to 128
execute if score 11 temp matches 0 run function extended_float:32/exponential/positive

# If negative, check if integer part is less or equal to 128
execute if score 11 temp matches 1 run function extended_float:32/exponential/negative

# Exponent is in range:
execute if score 11 temp matches 0..1 run function extended_float:32/exponential/in_range