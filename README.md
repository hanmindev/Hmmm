# Hmmm
Hanmin's Minecraft Math Module  

This library was originally written because of the fact that Minecraft can only perform arithmetic operations on 32-bit signed integers, which is insufficient for many practices. This library can compactly store 32-bit floating point numbers as integers (while maintaining identical bits), in addition to being able to perform operations on them. This library can also store 64-bit objects as two integers (again, while maintaining identical bits).  

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

For example, the variable \{u_test.expected\} can be accessed in-game using ```/data get storage u_test expected```

Storage variables can also be indexed using curly brackets. For example:  
```{u_test.expected}[5]``` would represent the 6th element in \{u_test.expected\} (because arrays begin at 0).  
