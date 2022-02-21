#> extended_float:32/float_type/pi_not_invalid
#   Numbers here are possible integers

# magic 2
# copy it back
scoreboard players operation P2 io = P0 io
scoreboard players remove P1 io 1
function extended_float:32/truncate/b/main
execute if score P2 io matches 1.. run scoreboard players set R0 io 1