# Hmmm
Hanmin's Minecraft Math Module  

This library was originally written because of the fact that Minecraft can only perform arithmetic operations on 32-bit signed integers, which is insufficient for many practices. This library can compactly store 32-bit floating point numbers as integers, in addition to being able to perform operations on them. In the future, I hope that this library will be able to store 64-bit objects as two integers.

Another useful function of this library is that it lets you easily create lists and perform operations on them (hopefully anyways, as I haven't actually made that at the time of writing).

# lingo
Unfortunately, there is no style standard for Minecraft Functions. Thus, I will briefly describe the style standard I will be using.

**Function Header**
All functions will have a header comprised of four sections:
1. path  
  The name will be in datapack:folder/subfolder/file format. This is identical to how functions are called in Minecraft.
2. description  
  A simple description of the function
3. parameters  
  The variables that will be used as inputs for the function.
4. return variables  
  The variables the outputs will be assigned to.

**Variables**  
Minecraft essentially has two main methods of holding data: scoreboards and data storage. Scoreboards can only hold signed 32 bit integers, while data storage can hold virtually any variable type (int, float, double, string, lists, etc).

***Scoreboard Variables***  
Variables which hold data in the form of scoreboards will be represented in the format:

```O.Pn```

In which O is the scoreboard objective name, P is the prefix for the scoreboard player name (optional), and n is an index.  
For example, the variable IO.R0 could be accessed in-game using ```/scoreboard players get R0 IO```.  

Multiple variables can be represented using square brackets. For example:  
```IO.R[0..3]``` would represent variables ```IO.R0, IO.R1, IO.R2, IO.R3```  
```IO.R[0, 2, 6]``` would represent variables ```IO.R0, IO.R2, IO.R6```  

***Storage Variables***  
Variables which hold data in the form of data storage will be represented in the format:

```{O.P}```

In which O is the target name, and P is the target path.

For example, the variable \{io.R0\} can be accessed in-game using ```/data get storage hmmm:io R0``` (Note: All data storage used in this datapack have prefix 'hmmm'.

Storage variables can also be indexed using curly brackets. For example:  
```{io.R0}[5]``` would represent the 6th element in \{io.R0\} (because arrays begin at 0).  

# Built-in Functions  
Hmmm features:  
signed and unsigned 32-bit:  
1. Addition  
2. Subtraction  
3. Multiplication  
4. Division  
5. Modulo  
6. Bitwise AND  
7. Bitwise shift left/right  
8. Create list of bits using 32-bit integer  

32-bit floating-point (basic):  
1. Decomposition (32-bit decomposition into to 1-bit, 8-bit, and 23-bit chunks)  
2. Recomposition (inverse of Decomposition)  
3. Addition  
4. Subtraction  
5. Multiplication  
6. Division  
7. Conversion to Storage (convert 32-bit representation into Minecraft NBT Storage format)  
8. Conversion to Storage as Double (convert 32-bit representation into Minecraft NBT Storage format)  
9. Conversion from int (convert Minecraft scoreboard to 32-bit representation)
10. Negation (x -> -x, -x -> x)
11. Absolute Value
12. Compare (less, less or equal, equal, greater or equal, greater)

32-bit floating-point (extended):
1. Floor
2. Ceiling
3. Truncate (round to 0)
4. Log
5. Exponent (e^)
6. Power
7. nth Root
8. Inverse Square Root
9. Sine
10. Cosine
11. Tangent
12. Arcsine
13. Arcosine
14. Arctangent

# Bitwise Operations  

***All Bitwise Functions***:  
Signed (most of them are exactly the same as Minecraft scoreboard operations):
```
bitwise:32/signed/add/main
bitwise:32/signed/and/main
bitwise:32/signed/divide/main
bitwise:32/signed/modulo/main
bitwise:32/signed/multiply/main
bitwise:32/signed/shift/left/main
bitwise:32/signed/shift/right/main
bitwise:32/signed/subtract/main
bitwise:32/signed/to_bits/main
```
Unsigned:
```
bitwise:32/unsigned/add/main
bitwise:32/unsigned/and/main
bitwise:32/unsigned/divide/main
bitwise:32/unsigned/modulo/main
bitwise:32/unsigned/multiply/main
bitwise:32/unsigned/shift/left/main
bitwise:32/unsigned/shift/right/main
bitwise:32/unsigned/subtract/main
bitwise:32/unsigned/to_bits/main
```

Detailed information about each of these functions can be found by opening the datapack and opening each function file.

Although it is possible to perform unsigned 32-bit integer arithmetic, the parameters and the result will still be a Minecraft scoreboard value, or a signed 32-bit integer. Thus, it is not possible to directly use this output. Pretend that there is a leading '1' bit if the scoreboard value is negative. You could also use the ```bitwise:32/signed/to_bits/main``` function to create a 32-bit little endian boolean array io.R\[0..31\].

Functions that take in two parameters will take:  
io.P\[0, 1\] as inputs and io.R0, io.R1 (if applicable) as output.  

***Example Usage***  
To perform ```1+1```:  
```mcfunction
scoreboard players set P0 io 1
scoreboard players set P1 io 1
function bitwise:32/signed/add/main
```
Then, the result can be returned using:  
```mcfunction
scoreboard players get R0 io
```  

# Floating Point Numbers

***All Floating-Point Functions***:  
```

float:32/decompose/main
float:32/recompose/main
float:32/add/main
float:32/subtract/main
float:32/multiply/main
float:32/divide/main
float:32/convert/to_storage/main
float:32/convert/to_storage_double/main
float:32/convert/from_int/main
float:32/negate/main
float:32/absolute_value/main
float:32/compare/less
float:32/compare/less_equal
float:32/compare/equal
float:32/compare/greater
float:32/compare/greater_equal

extended_float:32/compare/floor
extended_float:32/compare/ceiling
extended_float:32/compare/truncate
extended_float:32/compare/log
extended_float:32/compare/exponential
extended_float:32/compare/power
extended_float:32/compare/root
extended_float:32/compare/fast_inverse_sqrt
extended_float:32/compare/sin
extended_float:32/compare/cos
extended_float:32/compare/tan
extended_float:32/compare/asin
extended_float:32/compare/acos
extended_float:32/compare/atan

```


Detailed information about each of these functions can be found by opening the datapack and opening each function file.

Similar to unsigned 32-bit integers, floating point numbers in this datapack will still be represented as signed 32-bit integers because that's the only thing Minecraft scoreboards can handle. Although NBT Storage is able to store floating-point numbers, there is no way to perform any meaningful operations with them (at least, none that are practicle). I chose to represent floating-point numbers with scoreboard values because both take up 32 bits, and storing floating-point values as scoreboards means that it can be easily stored for later use (in an NBT storage array or possibly on an entity).  

For instance, the floating point number '86.5', which has a binary representation of '01000010101011010000000000000000' will be stored as a scoreboard value of '1118633984'. We will call these integer values 'raw floats'.

Before performing any operations on our raw floats, we must decompose them.  
The ```float:32/decompose/main``` function takes a raw float and returns three scoreboard values io.R\[0..2\]: sign, exponent, and significand (mantissa). You don't need to know what these are to use the library. You can use ```float:32/recompose/main``` to turn these three values back into a raw float.

To perform operations on floats, you should set io.P\[0..2\] and io.P\[3..5\] each to the returned values of a decomposed float.  

***Example Usage***  
To perform ```27504.27734375 + 64317.64453125 = 91821.921875```:
```mcfunction
# 1188487310 is the integer representation of 64317.64453125 (both 01000110110101101110000010001110)
scoreboard players set P0 io 1188487310

function float:32/decompose/main
# copy io.R[0..2] to io.P[3..5].
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

# 1199259045 is the integer representation of 27504.27734375 (both 01000111011110110011110110100101)
scoreboard players set P0 io 1199259045

function float:32/decompose/main
# copy io.R[0..2] to io.P[0..2].
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

# finally call the function to add io.P[0..2] and io.P[3..5]
function float:32/add/main

# if you're done, you can turn these values back into a raw float.
# set the result to the parameter
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
# turn the three scoreboard variables back into one raw float.
function float:32/recompose/main
```

You can get the result of this using:  
```mcfunction
scoreboard players get io R0
```
which will return 1202935542, or 01000111101100110101011011110110 in binary and 91821.921875 as a floating point representation.


You can also convert floating point numbers into NBT Storage using ```float:32/convert/to_storage/main``` if you want to use it to modify say, an armor stand pose or whatever you might need super accurate floating-point NBTs for.

***Example Usage***  
To turn 1199259045 (01000111011110110011110110100101) to 27504.27734375:
```mcfunction
# first decompose the raw float
scoreboard players set P0 io 1199259045
function float:32/decompose/main
# copy results to input
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
# convert to NBT storage. Return to {io.R0}
function float:32/convert/to_storage/main
```
You can access the returned NBT storage float using  
```mcfunction
data get storage io hmmm:R0
```

# Endnote

Hopefully that wasn't too confusing, it's my first time writing a lengthy documentation and I hope you understood everything! Please don't hesitate to contact me if there's anything that you think is unclear.

# License

This library is protected under the MIT standard license. In essense: 
1. You can do whatever you want with this as long as you provide credit (Must contain name "hanmangokiwi")
2. It's not my fault if my code doesn't work and broke something. I'm not responsible if you decided it would be funny to launch a nuclear missile with my code and an error causes it to destroy your home (but why are you using Minecraft for this?).
3. Read the included LICENSE file for detailed information
