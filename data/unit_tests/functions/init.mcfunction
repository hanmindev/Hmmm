#> unit_tests:init
#   Checks whether the unit tests should be run
#
# use /tag @s add unit_test to enable testing

execute if entity @a[tag=unit_test] run function unit_tests:main