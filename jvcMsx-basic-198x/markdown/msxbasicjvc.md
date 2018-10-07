
# CONTENTS 

* [Prologue](#prologue) What is MSX
* [STEP 1](#step-1) Give Your Computer an Order! 
* [STEP 2](#step-2) Let's Write a Program!
* [STEP 3](#step-3) Are Functions Difficult?
* [STEP 4](#step-4) Let's Paint a Picture with the MSX 
* [STEP 5](#step-5) MSX Music Class
* [Sample Programs](#sample-programs)
* [Design Sheets](#design-sheets)
* [INDEX](#index)

### ( == This conversion is still under revision == )

### Preface 

This book is written as an introduction for the beginner who will be 
writing BASIC programs on an MSX computer. It presents easy to 
understand explanations of the basic principles of MSX-BASIC 
programming. If you write and then run the programs in the order they 
are presented in, when you have finished reading this book you should 
be able to write simple programs by yourself, as well as modify other 
programs. Let's get used to BASIC by actually using the MSX computer 
to draw lines, produce sounds and perform other operations. 

#### How this book is organized: 

l. This book is written with the assumption that you know how to operate 
the computer and use the keyboard. 

2. The subject matter will be much easier to understand if you enter and 
run each program as you read through the book. 

3. The command words used in each explanation are framed in large type, 
so it's easy to look them up in the index. 

4. Items containing a black mark v in the middle of the explanation, provide 
additional information to make the subject matter easier to understand. 

**Note:**

1. If you have carefully followed the contents of this book and there are 
still unclear points, omissions or other mistakes in the text, please contact 
your sales representative for additional information. 

2. Please understand that Japan Victor Corporation can not provide compensation 
or be responsible for any errors or problems which are the result of the items 
mentioned above. 


## Prologue 

What is **MSX**

It's necessary for us to use words in order to speak. In the same way, in order 
for people to be able to communicate with a computer, it's necessary to use a 
programming language such as BASIC. 

Up to now, depending on either the computer or the computer manufacturer, both 
the BASIC and its functions have been different. As a result, when certain 
types of software, such as programs written in BASIC, are used on a specific 
computer, that software can't be used on a different kind of computer. However, 
on **MSX** computers, both the hardware and the software have been standardized. As a result, all software with the **MSX** logo will run on any **MSX** computer. 

This means that you can share your software with any of your friends who also 
have an MSX computer. 

### The Key is in the Program

In order to make a computer run, you have to study how to write a program. 

If a program is entered into the computer, it reads one line of the program at 
a time, and then operates according to the indicated instructions. ln other 
words, a program is the written set of instructions which contain the 
appropriate commands for the computer to perform. 

Well everybody. do your best to leam how to write your own programs all by 
yourself. 

```basic
10 REM ------------ 
20 REM -  HC-7GB  - 
39 REM ------------
40 COLOR l5,4:CLS 
50 LOCATE 5,2 
60 PRINT "MSX Personal Computer" 
70 LOCATE 12,5 
80 PRINT "JVC" 
90 LOCATE 11,7 
100 PRINT "HC-7GB" 
110 PLAY "CDEFE" 
120 END 
```

# STEP 1 

## Give Your Computer an Order!

A program uses commands to indicate to the computer what it must do. 
However, there is also a way to use a computer without using a program. A 
computer can be run by either method. It isn't necessary to distinguish between 
the two as they both use the same command language. 

### Direct Mode

This mode is used to obtain direct results without storing the commands 
in the computer. 

For example, 

```basic
PRINT "ABC" [RETURN]
```

The [RETURN] key is used to inform the computer when the input is finished. Be 
sure to press the [RETURN] key at the end of every input line. 

```
ABC 
Ok
```

_The Direct Mode: The computer can read and write characters directly._



### Program Mode

All input lines start with a line number in the program mode. In this mode, the 
program is executed after the program is recorded by the computer.
 
```basic
10 REM PROGRAM 1
20 A=10 : B=5 
30 PRINT A,B 
40 PRINT A*B 
50 PRINT A+B 
60 PRINT A-B 
70 PRINT A/B 
80 END 
```

_Work is performed according to the programmed order._

#### Line Number

The line numbers are used to inform the computer of the correct order of the 
operations to be performed. Any number from B to 65529 may be used. 

#### REM

The contents of the remarks statement are ignored when the program runs. They 
are only used to make the program easier to understand. An apostrophe (   ) may 
be used if the REM statement is omitted. 

#### END

When the END statement is encountered, it stops the program. 

Next, let's enter this program. 

Before starting to write the program the following command should be entered. 

```txt
NEW [RETURN]
```

#### NEW

This command clears the entire program storage area. 

If this command is not used at the beginning of a program, the program commands 
from the previous program may not be erased. When this happens, it's possible 
that program commands of the new program may be mixed with the statements 
already in memory.

_If the old programs remain, bugs will appear._



Therefore 

```basic 
10 REM PROGRAM 1     
```

Don't forget to press the RETURN key when you finish a line. 

From now on, enter all programs in this manner. 


_It's convenient to memorize this command._

#### AUTO

This command generates the line numbers automatically on the screen. 

Format 

```txt
AUTO beginning line number, increment
```

When the first line number parameter is omitted, a value of 0 is entered. If the increment parameter is omitted a value of 10 is entered: 

```basic
AUTO 100,10
```

line numbers are written from line 100 in increments of 10 

```basic 
AUTO 20
```

line numbers are written from line 20 in increments of 10 

```basic
AUTO ,10
```

line numbers are written from line 0 in increments of 10 

```basic
AUTO
```

line numbers are written from line 10 in increments of 10 

In order to stop automatic line number generation, press the **[STOP]**
key while holding the **[CTRL]** key down. 

This is a convenient command to use when lines are added to other lines, because an increment of 10 is often used in programs.
  
_You don't have to take the trouble to enter a new program_

#### KEY

This command defines the operations of the functions keys. 

Format 

```txt
KEY function key number, character format
```

The function keys are numbered from 1 to 10. A character string of up to 15 characters can be defined for any one key, but only five characters can be displayed on the screen. 

```basic
KEY 6, "PRINT"
```

Function key is defined as PRINT. 

Check to see if there were any mistakes when the program was entered. If it's correct, let's try and run the program. 

```txt
RUN [RETURN]
```

#### RUN

This command is used to execute a program in memory. 

```basic
10 REM PROGRAM 1
20 A=10 : B=5 
30 PRINT A,B 
40 PRINT A*B 
50 PRINT A+B 
60 PRINT A-B 
70 PRINT A/B 
80 END 
```

RUN ->

```txt
RUN 
10 5 
50 
15 
5
2 
OK 
```

How did it go? Did everything run properly? 

**Common Errors**

_ An error message tells the line number of a mistake._

```txt
Syntax error in line number
```

Did an error message like this appear? An error occurs when a 
command is used that does not appear in BASIC. Generally, typing 
mistakes are the most frequent reason for error messages. The 
last number in the error message indicates the line number where 
the error occurred. Find and correct the mistake in the indicated 
line number. Please refer to the reference book for more detailed 
information as there are many other possible error messages besides 
"Syntax Error". Let's take another look at the program by 
entering 

```txt
LIST [RETURN]
```

#### LIST

The LIST command displays the  program on the screen. 

Format 

```basic
LIST

The entire program is displayed on the screen 

```basic
LIST 20
```

Only line 20 is displayed on the screen 

```basic
LIST 20- 
```

All the lines from line 20 to the end of the program are displayed on the screen 

```basic
LIST -50
```

All lines up to line 50 are displayed on the screen 

```basic
LIST 30-60
```

Lines 30 to 60 are displayed on the screen 

**How to correct a program.**

(1) Rewriting a command 

Suppose that you want to change the A+B in line 50 to A*B. Move the cursor key to the position of the "+" sign and enter the "*" symbol. Then press the [RETURN] .The following characters will then appear. 

```basic
50 PRINT A*B
```

(2) Erasing an entire command line 

To erase line number 70 enter 

```txt
70 [RETURN]
```

When a line number is entered and the [RETURN] key is pressed, the computer erases that line number. 

```basic
10 REM PROGRAM 1
20 A=10 : B=5 
30 PRINT A,B 
40 PRINT A*B 
50 PRINT A+B 
60 PRINT A-B 
70 PRINT A/B 
80 END 
```

After correcting the program, list it again. 

```basic
40 PRINT A*B 
50 PRINT A*B 
60 PRINT A-B 
80 END 
```

The corrections which were entered are now part of the program. 

_There are two ways to erase commands._

Here is another command which is convenient to memorize. 

#### RENUM

This command is used to correct line numbers 

Format 

```txt
RENUM new line number, old line number, increment
```

If the new line number is omitted. a value of 10 is entered. If the old line number is omitted the first line number at the beginning of the program is entered. When the increment parameter is omitted a value of 10 is used.

```basic
RENUM 1,10,1
```

Line number 10 is changed to 1. The line numbers after that increase by 1. 

```basic
RENUM 100
```

The first line number is changed to 100, and the following line numbers increase by 10. 

```basic
RENUM 100,30 
```

Line number 30 is changed to 100. The line numbers after that increase by 10. 

```basic
RENUM ,50
```

Line number 50 is changed to 10. The lines after that increase by 10. 

```basic
RENUM ,50,5
```

Line number 50 is changed to 10. The lines after that increase by 5. 


#### DELETE

This command erases many lines at once. 

Format 

```txt
DELETE first line number to be erased, last line number to be erased 
```

If the first line number to be erased is omitted, a value of 0 is entered. 

```basic
DELETE 10-40
```

Lines 10 to 40 are erased. 

```basic
DELETE -100
```

The lines from the beginning of the program to line 100 are erased. 


## STEP 2
### Let's write a program

Let's study some of the basic commands necessary to write a program. Since 
programs are written in the following order BASIC COMMANDS, FORMAT, 
PROGRAM LINES AND EXPLANATIONS, when you are entering the program 
lines by yourself, let's also master BASIC at the same time. Be very careful 
about entering the comma "," semicolon ";" and other symbols. Just one 
mistake can make a big difference in the way the program runs. 

#### PRINT

This command is used the most for writing letters and numbers. 

# (Revision must continue at this point)


PRINT "character string" -> The characters enclosed in double quotation marks are displayed on the screen. 


```PRINT numerical value``` -> The numerical value is displayed on the screen as shown. 

PRINT -> One line of blanks is displayed 
on the screen. 

Character strings and answers to calculations can ) 
also be written instantly. 
I8

10 PRINT "ABCDEF" 
20 PRINT "UV. " 
30 PRINT "5*9" 
40 PRINT 
50 PRINT 59 
60 PRINT 54=9 
70 END 
it RUN
ABCDEF 
'7' 
5*9 
59 - 
45 
OK 

When the PRINT calculation format is used, the MSX computer can 
be used just like an electric calculator. 
addition PRINT 7 + 8 
subtraction PRINT 15 - 7 
multiplication PRINT 5 iv 8 
division PRINT 20/2 
I9

Let's enter the next program. 
10 ? 7+8 
20 ? 15-7 
3B?5-:8 
40?20/2 
50?2.00flBfl=v1000fl=vt000f10 
6flEND 
Q RUN 
15 
8
40 
10 
2E+ 14 
OK 
in 
Abbreviated Format 
Instead of writing PRINT in each statement, the PRINT command 
may be omitted and a question mark "'2" can be used as 
an abbreviation. 
The answer for line 50 was 2E + l4. This might seem like a strange 
number, but this just means that the number 2 is followed by a 
string of I4 zeros. 
/ 
20

' Mistakes using the comma "." and the colon ";" 
Enter the following program. 
10 PRINT "ABC" 
20 PRINT "A", "B", "C" 
30 PRINT I, 2, 3 
40 PRINT "A" ; "B" ; "C" 
50PRINTl;2;3 
60 END 
Q RUN 
ABC 
cA V 1BO V _. J 
14 characters    I4 characters $9969 
C 
14 characters 14 characters 
r \7 < 
space space space 
Q3 space 
A B C 
space 
OK 

when the comma is used, the first 14 places of the variable number 
are displayed. Then the first I4 places of the second variable 
are displayed. When the semicolon is displayed, this indicates that 
the next filed to be printed will be start at the first character following 
the preceding field. 

The first character in a numeric field is blank so that the minus 
sign can be printed if necessary. There is also another space at 
the end of a numeric field, so it will not be connected to the next 
field when displayed. 


#### CLS

This command is used to clear the screen. 

```
CLS
```

The clear screen command erases the contents of the screen and 
positions the cursor at the home position (upper left of the screen). 

#### LOCATE

This command moves the cursor  to the specified position. 

         
LOCATE horizontal position, vertical position
         

The small dark square on the screen is known as the cursor. When 
the PRINT command is used the characters can be written in the 
cursor position. Because the cursor can be moved freely to any 
location specified by the program, characters can also be written 
in any desired location. 
10 CLS 
20 PRINT "MSX BASIC" 
30 LOCATE 10,10 : PRINT "HELLO" 
40 END 
Q RUN 
I7 
MSX BASIC 
O characters 
OK    IO characters 110 
22

' Up to now only one command could be written on a line but 
in BASIC by using the colon ":" any number of commands 
in a single line. When a number of commands are written in 
a single line using the colon, this is called a multistatement. If 
line 30 is written as 

30 LOCATE 10,10 : PRINT "HELLO" l 

this is the same as 

30 LOCATE 10,10 
35 PRINT "I-IELLO" 

If a program is written in multistatements the program will become 
shorter. The advantage of this is that the program will run 
faster. However, if many statements are written in the same line, 
the program will become harder to understand or correct, so you 
should avoid using this when possible. 

When the power is turned on 24 lines of 37 characters can be displayed 
on the screen (Screen Mode 0). 

The horizontal positions are 0- 36 (37 places). 

The vertical places are 0-23 (24 places). 

Any position within this range can be specified. This is how one 
page of a screen looks in the screen mode. 
horizontal -v 
(9.5) (36.9)
everitica 
(0,22) (36,22)
23

#### GOTO

Command to jump to the specified line. 

Format 

```
GOTO line number
```

This command causes the program to jump to the specified line number. A program is executed in the correct order specified by the program line numbers. The GOTO command is used when you want to change the order of execution. 

```basic
10 A=1 
20 PRINT A 
30 A=A+1 
40 GOTO 20 
50 END 
```

a RUN 

DO not use this command until you learn how to interrupt execution of a 
program. 


Variable: 

```basic
10 A=l 
20 PRINT A
30 A=A+l 
```

The character "A" used here is called a variable number. A variable is used as 
a container or storage area for a numerical value which can change. Please 
remember the name which is attached to the container or storage area. 

Format Q) 

Variable name = expression

In this case the equals sign doesn't mean "equals" or "is the same as". 
Instead, this means that the value on the right is entered into the value on 
the left. In this case, 1 is entered to the container or storage area 
called "A" 

Format @ 

PRINT variable name 1 
' 20 PRINT A     

In this case the value entered in the storage area called "A" is 
displayed on the screen. 

l 30A=A+l     

This statement means that 1 is added to the value of A. This is 
entered into the storage area A and becomes the new value of A. 


The first character of a variable must be an alphabetic character. 
After that either letters or numbers up to 255 can be used. Variable 
names of more than three characters can't be distinguished 
by the computer. 

```txt
A123 
A124 
A125 
```

These are all interpreted as the same variable 

Only the first two characters can be distinguished by the 
computer. 

40 GOTO 20 

This means jump to line 20. When this program is run, numbers 
will be displayed one after another on the screen without stopping. 
The computer will execute the lines up to line 40 one by one. The 
program never reaches the line 50 END statement because when 
it gets to line 40 it jumps back to line 26. 

10 
20 
30 Loop 
40 
... To stop execution. read the explanation of 
STOP on the next page. 



This command is used to interrupt 
STQP the program execution. 
To stop the program, press the key while holding the 
key down. 
The message 
T Break in line number 
will be displayed on the screen to indicate the point in the program 
where the interrupt occured. 
49 
50 
51 
Brea 
OK 

k in

At this time program execution can be continued by using the 
CONT command. 
49 
50 
5 l 
Break in 20 
ox 
CONT 
52 
53 
54 
55 
56 

The interrupted line number will be stored and used later. 

Break in line number 
28

Format 
Command to repeal the same process 

```
FOR variable = beginning value TO ending value 
NEXT variable 
```
This command is used to repeat the same process within a program 
a fixed number of times, and then stop automatically. 

```
10 FOR I=1 TO 10 
20 PRINT I 
30 NEXT 1 
40 END
```
 
3 RUN 
O7<;\ooo~|o\u|-s>w:~.:- 
FOR T9 
H *1 .. , 
l 

It hasn't reached the final value yet, has it? 



The same variable name must be used in the FOR and the NEXT 
statement. 

When the value of a variable is changed in constant steps, the 
size of each step can be specified with the STEP command. 

STEP variable increment 
is written like this 

```
10 FOR l=l TO 10 STEP 2 
20 PRINT l 
30 NEXT l 
40 END 
```

Q RUN 
IO
7<\o-.iuiw- 
__ STEP 2 
   $   F-*1-W W Z 

This program will display the numbers from 1 to 10 on the screen 
When the STEP 2 is entered, the numbers displayed on the screen 
will increase by 2 each time 

If there are many stens in a subroutine the number of written repetitions can be reduced 

#### INPUT

Command to assign data input from the keyboard to a variable. 

Format 

```
INPUT variable
```

Up to now, the following method has been used to inform the computer of a variable value. 

```
lfi A=10 
20 B=2fl 
```

At the beginning of the program where the variable values are 
defined. This is used when you want to change the values of the 
variables. The program has to be corrected. 

The INPUT command is used to input variable values from the 
keyboard. 

```
Ifl INPUT A 
20 PRINT A=t=3 
30 END 
```
Q RUN 
'?l 
31

The question mark will appear. This means that the computer is asking you what the value for the variable A in the line should be. For example, if you enter 

[H J] 

The computer will perform the calculation on line 20 as 5 it 3. The 
answer will be 15. 

Using the INPUT command 

is output, but you have no way of knowing whether character 
or numeric information is requested, or how you should answer. 
If characters enclosed in quotation marks (") follow the INPUT 
command, those characters will be displayed before the question 
mark. 

Format 

l INPUT "character string";variable l 
Well? let's change line 10 in the last program and then try and 
run the program 
10 INPUT "HOW MUCI-I IS A";A 
20 PRINT A13 
36 END 
P $5 RUN 
l HOW MUCH IS A? I l 
32

#### IF

According to a condition 

Format 

```
l IF condition THEN statement
```

If a specified condition is met, the operations following the THEN 
statement are performed. If the condition is not met, the next line 
in the program is executed. 

Format @ 

```
l IF condition THEN line number     
```

If a condition is met, the program will jump to the specified line 
number. If the condition is not met the next line in the program 
is executed. 

The IF - THEN command is used when conditional judgements 
have to be performed. 

```
10 INPUT A 
20 IF A>5l/I THEN PRINT "GREATER THAN SH" 
:GOTO 10 
30 PRINT "LESS THAN 50" 
40 GOTO 10 
50 END 
```

When this program is run, and the question mark appears, enter 
any number and press the key. 
When the number which is input is greater than 50, 
V GREATER THAN 50 J 
33

appears When the number which is input is less than 50, the following 
message is displayed. 

LESS THAN 50 

Conditional format 

Symbol Expression Meaning 
A=B 
A>B 
A<B A is smaller than B 
either > A<>B 
either = = A>=B A is greater than B 
either = = A<=B 
A and B are equal 
A is greater than B 
A and B are not 
equal 
A is less than B 
.5\11 
52! >4?     w _iiti IIQ   F? 
   @<~5'@

If a condition is not satisfied, an 
IF - THEN ~ ELSE other operation is performed. 
Format (D 
V IF condition THEN command (I) ELSE command (2) l 
If a condition is met the first command is performed. If the condition 
is not met the second command is performed. 
Format @ 

If the condition is met the first line is jumped to. If the condition 
is not met, the program control jumps to the second line. 
In this command either line numbers or commands may be used 
in the same line without any problem. For example IF condition 
THEN command ELS,E,|ine number|. TIIIS command IS HOW USCCI In 
th preceding program. 

II/I INPUT A 
20 IF A>Sl?I THEN PRINT "GREATER THAN 55" 
ELSE PRINT "LESS THAN 50" 
30 GOTO 10 
40 END 
-2.___ _ "is ti; H.) 
35 
IF condition THEN line number(I) ELSE line number(2)    

#### GOSUB ~ RETURN

This command is used to jump to a subroutine. 

Format @ 

```
GOSUB line number 
RETURN 
```

After jumping to the specified line number and performing the 
subroutine, by using the statement in the subroutine, the 
program returns to the line following the GOSUB statement. 

Format @ 

```
GO?UB line number 
RETURN line number 
```

This is similar to the previous example. The program branches 
to the line number and performs the subroutine, but the program 
returns to the line number specified in the RETURN statement. 

A subroutine is a part of a program which repeats the same 
operations any number of times when the program is executed. 

This is extremely convenient as it can be called 
whenever it is needed. 

This small operation contained within a program is called a 
subroutine. _ % 
AI'! J 
Gosub 10 W --"<11 
LAOISOIBOITOIBO 
_ ~__v_id_' 
A subroutine does e separate operation and subroutine 
than returns. 
36

The next program calculates the surface area of a block 

```basic
10 INPUT "HEIGHT";A 
20 INPUT "WIDTH";B 
30 INPUT "DEPTH";C 
40 GOSUB 70 
50 PRINT "SURFACE AREA ,S 
69 END 
75 S=2*(A*B+A*C+B*C) 
80 RETURN
```
 
When the program is run, and the computer WIII ask for the values 
for HEIGHT? WIDTH? and DEPTH", enter 4, 5 and 6 
After line 70 a subroutine is performed The program returns to 
line SB after the in line 80, and then displays the calcu- 
Iation. 
SURFACE AREA I48 
No matter how large the rectangle is. the calculation 
for the surface area is the same. Let 
one subroutine do this calculation. 
37 
\ l.   -;~:jl .?~ rt 
gas
. Tat av

#### READ ~ DATA

This command is used to enter data 
Format 

```
READ variable l, variable 2, variable 3...
```
Data is entered as represented by variable (I), variable (2) and 
variable (3). 

```
DATA constant(I), c0nstant(2), constant(3)
```

More than one constant can be contained in a DATA statement. 
When the variable value is entered, a number of fixed constants 
can be entered. 
When the variable value is entered, the INPUT statement is used 
to represent values such as A: 10, B=2B etc. 
However, there is also another way to enter data besides this 
method. This is done by using the READ-DATA statements. 

```
10 READ X,Y,Z 
20 PRINT X;Y;Z 
30 DATA 10,20,391 
49 END 
```

Q RUN 
10 20 30 
OK 

38

In line 20 the READ X, Y, Z statement reads and enters (loads) 
the values of X, Y and Z. The values entered for X, Y and Z correspond 
to the values in either lines 10, 20, or 30. 

The READ statement variables can have either a numeric value 
or a character variable. 

For example in the next program, the average test scores for Tom, 
Dick and Harry can be calculated. 

```
ID FOR I = I TO 3 
20 READ A$, B, C, D 
39 X = INT((B + C + D)/3) 
40 PRINT AS; "AVERAGE SCORE ";X 
SB NEXT 
60 END 
7B DATA Tom, 74, 69, 78 
80 DATA Dick, 66, 55, 6l 
90 DATA Harry, 87, 76, 73 
```

Q RUN 

```txt
Tom AVERAGE SCORE 73 
Dick AVERAGE SCORE 60 
Harry AVERAGE SCORE 78 
OK 
```


10 FOR l=l TO 3 
50 NEXTI 
The FOR-NEXT commands in lines 10 and 50 will be repeated 
three times. Three repetitions are necessary to perform the calculations 
for each of the three students. 

Line 20 reads each student's name and grades for English, 
mathematics and science. This information is contained in the 
DATA statements in lines 70, 80 and 90. 

```
30 X=INT((B+C+D)/3)
```

This statement adds the three grades and then divides them by 
3 to get the average. 

The INT command is used to obtain the positive integral value 
(i.e. without any fractions) after the sum of B + C + D is divided 
by 3. We'll study the INT command in more detail later. 

```
40 PRINT A$; "AVERAGE ";X 
```

The name which was loaded in line 20 and the average calculated 
in line 30 are displayed. 
_ I |z   AD 
PB.
_ : V   : .7, 
The calculations are performed in the same 
    manner, but the READ-DATA statement, 
makes it easy to enter a number of variables. 
40

This command is used to read and 
enter data after it has already been 
read in one time. 

Data which was loaded by the READ~ DATA commands normally 
can't be read again after it has been loaded once. However, 
it is often necessary to use the same data a number of times. 

#### RESTORE

The RESTORE command enables the data to be loaded again after 
it has already been loaded once. 

'"\ Format *'\l_   * 
RESTORE 
10 READ A, B, C 
    20 RESTORE 
~ so READ 1), E, F 
[ 40 PRINT A;B;C 
r so PRINT D;E;F 
, so END 
* 10 DATA ta. 20, 30
Q RUN 
ID 20 30 
10 20 30 
OK 

4|

Format @ 
```
RESTORE line number 
```
will 
When this command is used the data in the specified line number 
be loaded next. 

```
10 READ A, B, C 
20 RESTORE 90 
30 READ D,E,F 
40 PRINT A;B;C 
SB PRINT D;E;F 
60 END 
70 DATA 10, 25, 315 
8B DATA 40, SB, 60 
90 DATA 70, 80, 90
```

@ 
10 20 30 
7B 86 90 
OK 

42

STEP 3 
Are Functions Difficult? 
---CSl>-
43

The way functions work is rather simple. An answer is given for a value based 
on a preset processing operation. MSX computers have many functions, each 
of which performs a preset process. 
Lets study how to use some of the more useful functions. 
(A w 
_ _ ib 

Preset processing of variables is efficient. 

#### CHR$

This returns the character which 
corresponds to the numeric or 
variable value. 

Format 

```
CHR$ (numeric value)
CHRS (variable value)
```

The variable value must be between 0 to 255. 

PRINT cnastes) l 
A
OK 

44

The character "A" is displayed on the screen. This is because the 
65th character in the characier code chart is "A". 
The computer can also display other characters besides the ones 
on the keyboard. The chart of the assigned numbers for characters 
and graphics is contained within the computer. This number 
which is assigned to a character is called the character code or 
ASCII code. 
Character Coda Chart 

The character code in the chart above is determined as follows 
(horizontal column number) X 16 + (vertical column 
number)=(assigned character code) 

This returns the integer and rell\
lT moves any fractions. This command 
is used for positive 
numbers. 

Format 

[NT (numeric value) J 
V PRlNTlNT(3.l4) l 
The fraction of 3.14 is removed and the positive number 3 is displayed. 

#### RND

This command returns a random number between I and 0. 

Format 

RND (numeric value = -1, 0 or l) 

```
ta FOR l=l TO 5 
20 X:lNT(RND(l)>i- 10) 
    30 Y=lNT(RND(l)* ta) 
T 40 PRINT "x=";x;*-v=";v 
so NEXT 1 
60 END 
```

When this program is run X is equal to a value ranging from D 
to 9. Y is equal to a value from I to 10. This operation will write 
out the results five times. 
46

   gain )   J 
Y 
Any number of random probability can be out- 
___ put just like throwing dice. 
Li -Rik 
This command is used to represent 
||\|KEY$ characters input from the 
keyboard. 
Format 

```
INKEY$
```

If a key on the keyboard is pressed, the value of that character 
is returned. ll" no key on the keyboard is pressed, a space (null 
string) is returned for that value. 
10 A$=lNKEY$ 
20 lF A$=" " THEN GOTO 10 
30 PRINT A$ 
40 END 
When this program is run, press any key on the keyboard. The 
character which was entered will be displayed and the program 
will end. 
47

10 X= 10:Y= 10:CLS 
20 A$=lNKEY$ 
30 IF A$="S" THEN X=X- l:GOTO 70 
40 IF A$="D" THEN X=X+ l:GOTO 70 
Sfl IF A$="E" THEN Y=Y-1:GOTO 99 
60 IF A$="X" THEN Y=Y+ l:GOTO 99 
76 IF X<flTHEN X=B l 
86 IF X>28 THEN X=28 
90 IF Y-<0 THEN Y=B 
10fl IF Y>20 THEN Y=2B 
I10 LOCATE X,Y:PRINT " Q " 
I20 GOTO 20 
I30 END 
This program displays the " U " on the screen. If "S" is entered 
it will move to the left side. If "D" is entered it will move to the 
right side. If "E" is entered it will move up. If "X" is entered 
it will move down. 
Program flow can be controlled from the key- 
) H! 
Sf-Q'!-4.?
48

## STEP 4 
### Let's Paint a Picture with 

Let's draw pictures with the MSX! 

Lets's study some commands and draw some pictures now. We'll combine some 
of the commands that have appeared before to create some graphics. 

This command selects the screen. 

Format 

```
SCREEN mode
```

The screen mode is specified by values from 0 to 3. 
MSX computer has four kinds of screen modes in all. 
Mode 0: Text Screen l 
37 characters X24 lines (Default setting) 
Mode l: Text Screen 2 
29 charactersx 24 lines (Default setting) 
Mode 2: High Resolution Graphic Mode 
256 dotsx I92 dots 
Mode 3: Low Resolution Graphic Mode 
(Multi-color Mode) 
256 dotsx 192 dots (64 X 48 blocks) 
Up to now we have only used Screen Mode 0. 
The screen is automatically set to Mode B when the power is turned 
on. 
The Text Mode and Graph Mode are used as follows. 
To display characters ....................... .. Text Mode 
To display drawings ......................... .. Graphic Mode 
Use Text Screen 1 or Text Screen 2 to display any character on 
the screen 
Mode 2 or Mode 3 must be used to display any graphics. 
50

- 3 multi-color mod 
screens 
_ 2 high resolution 
?_"-   5_=   :='-,1-_:;   _3-__   _ mode screens 
Z     1 text screen 2 
O text screen 1 
You have just been using Text screen 1 or 
mode B. There ere three other kinds of screen 
modes. 
SI

This command is used to select 
COLOR colors for the screen. 
In MSX BASIC there are l6 colors which may be used. But they 
are decided by the color command. 
Format 
COLOR character color code, background color code, 
border color code 
This command determines the color of characters and lines,the 
background and border of the screen. 
When the computer is turned on it is preset to 
COLOR I5, 4, 4
White characters (color code 15) 
Dark blue background (color code 4) 
Blue border (color code 4) - Valid only in Mode l. 
The border area is not displayed because the screen in Mode B. 
Change the color of the screen by refering to the Color Code Chart 
and making the appropriate modifications. 
' Color Code Chart 
0: clear 4: dark blue 8: red l2: dark yellow 
I: black 5: light blue 9: light red I3: purple 
2: green 6: dark red 10: yellow 14: gray 
3: light green 7: blue ll: light yellow I5: white 
52

' Abbreviated Format 
To change just the character color 
p COLOR 1 
To change just the background color 
COLOR ,2 
To change the outline color 
COLOR.,3 
    so 
i
    Q Q l made a mistake. The characters and 
U 'l     I background were the same color. 
- ' - ls    
-S @ we   
53

Well, let's try and paint a picture with the MSX computer and 
the next program. 

This program used circles and straight lines to make a snowman 
and a house. Now let's make the snow fall in the sky. 

```
10 REM SNOWMAN 
20 SCREEN 2 
30 LINE (0,140)-(255,140), 5 
40 PAINT (70,40), 5 
50 LINE (25,110)-(50,90), 6 
60 LINE (50,90)-(80,110), 6 
70 LINE (80,110)-(25,I10), 6 
80 PAINT (50,100), 6 
100 LINE (35,140)-(45,115), I, 
110 LINE (53,125)-(60,115), 3, 
120 CIRCLE (150,120), 40,15 
130 CIRCLE (150,60), 25,15 
I40 PAINT (150,120), 15 
150 PAINT (l50,60), 15 
160 PAINT (150.83), 15 
170 CIRCLE (140,60), 5,1 
180 CIRCLE (160,60), 5,1 
I90 PAINT (l40,60), 1 
200 PAINT (160,60), I 
210 LINE (l35,70)-(150,75), 1 
220 LlNE(lS0,75)-(l65,70), I 
230 CIRCLE (150,100), 6,9 
240 CIRCLE (150,115), 6,9 
250 PAINT (150,100), 9 
260 PAINT (150,115), 9 
310 PAINT (160,30), 13 
270 LINE (145,35)-(l60,l5), I3 
280 LINE (l60,15)-(175,22), 13 
290 LINE (l75,22)-(l70,45), 13 
300 LINE (I70,45)-(145,35), I3 
90 LINE (30,l40)-(70,110), 10, BF I 
```

BF 
BF 

Program title set mode 
set mode 
background sky 
root of the house 
house 
door 
window 
' 5l'\OW'l'Tl8I'l 
eyeballs 
mouth 
~ buttons 
l bucket on heed 
54
```
320 FOR l=l TO 500 
330 X= INT(RND(1)*256) mace ms in sky 
340 Y = lNT(RND(1)* 91) at random 
350 PSET (X, Y), 15 
331600 oNEoXroT I310 l,c,o,,nt,i,n,u,,e,,,d,is    la"in    
380 END 
```

To paint a line with the MSX computer, the position of the dots 
on the screen must be displayed one by one. In order to paint 
the picture of a snowman, the positions of the necessary points 
are drawn in a diagram.


Selection for line drawing 

SCREEN 
20 SCREEN 2 

This selects a high resolution mode of 256 (horizontal) X 192 (vertical) 
dots. As a result there are 256 individual horizontal points 
and 192 vertical points which can be painted. These are known 
as graphic coordinates. 
horizontal (255.8) 

ll you'ro thinking that it's 256 and not 255. 
To make sure that you're counting the zero. 

. Q 
C
VB
(0.191) (255,191) 
Command for drawing a straight 
line 
30 LINE(0,l40)- (255,140), S
This command draws a line from point A (0,140) to point 
B(255,100) in color number 5 (light blue). 
57

Format 

```
LINE (starting point)- (ending point), color code
```

When the color code is omitted, the color specified for the character 
code is used. 
When a line is drawn by the LINE statement, it can also be abbreviated 
as follows. 

```
50 LINE (25,110)-(50,90), 6 
60 LINE (50, 90)-(80, 110), 6 
70 LINE (80, 110)-(25, 110), 6 
Q 
so LiNE (25, 110)-(50,90), 6
ea LINE -(80,110), 6 
10 LiNE -(25,110), 6 
```

Command for painting a rectangle 

```
90 LINE (30,l40)-(70,110), 10, BF
```

In this command a diagonal line is drawn from point A (30,140) 
to point B (70,110) and connected. This forms the diagonal of 
a rectangle which will be painted yellow (color mode 10). The inside 
of this rectangle will be painted yellow. 
58

UGJW) 
   3B'14m You can draw a rectangle by iust 
specufyung 2 [)OlI'11S. 
Format 
LINE (starting point)-(ending point), color code, B     
Either or can be used to specify the painting of the inside 
of the rectangle. 
40 PAINT (70,40), 5 
Command to paint colors 
This command will paint the area from the point (75,442!) in light 
blue (color code 5). 
Be careful when you use this command, because if the area to 
be painted isn't surrounded by lines, the entire screen will be filled 
in with the specified color. 
1 LH 
4'5   ? 
C    
The color will flow out if the outline isn't com    
pletely connected. 
59 
1

Format 
PAINT (starting point), color, color of high resolution
The high color resolution can't be used on SCREEN 2. 
The color code designations for painting SCREEN 2 graphics are 
not the same. The colors for SCREEN 3 graphics must be specified 
separately. 

```
10 SCREEN 2 
20 LlNE(100,10)-(50,100), l 
30 LlNE-(2f10,lS0), 1 
40 LlNE-(lf10,10), l 
50 PAINT(10fl,8D), I 
60 GOTO 60 
79 END 
```

This program paints a black triangle when it is run. 
After the triangle is drawn, it then paints the inside portion black. 
.--__ 
   1_,_\ 
/ Sometimes the color of the outline and the inside 
are the same and sometimes they're different. 
60

```
10 SCREEN 3 
20 LlNE(l%,10)-(5fl,100), l 
39 LINE-(200,l5l5), l 
40 LlNE-(lf10,10), l 
50 PAlNT(100,80),2,l 
60 GOTO 60 
70 END 
```
When this program is run it paints a black triangle. 
After the triangle has been drawn, it paints the inside portion 
green. 
Command for drawing an ellipse 
CIRCLE 
120 ClRCLE(l5fl,l2l3), 45,15
This command draws an ellipse with a center located at position 
(150,120). The radius is 40 dots (pixels), and the ellipse will be 
painted white (color code 15). 
Formal 
CIRCLE (center point), radius length (in dots), color code 
1
10 SCREEN 2 
20 FOR A= 10 TO 60 STEP 10 
30 ClRCLE(l28,96), A, l 
40 NEXT A 
50 GOTO 50 
69 END 
6|

When this program is run, it draws six black ellipses with differ~ 
ent radii each having the same center. 
ln line SB the statement GOTO 50 causes the ellipses which were 
drawn to be displayed continuously. To stop the display press the 
and keys. 

If 

A circle is defined by the location of the center and 
the length ol the radius. It you don't specify the 
color. it will be the same as the text cherectere. 
The correct format for the circle command is shown below. 
CIRCLE (center point), radius length (in dots), color 
code, starting point degree, ending point degree, ratio 
(of radius length to width). 

The parameters from the color code to the ratio may be omitted. 
v When the color code parameter is omitted, the color specified 
in the COLOR command is used. 

0 When the start point degree parameter is omitted a value of 
0 is used. 
When the end point degree parameter is omitted a value of 6.28 
is used. 
    A value of l is used when the ratio parameter is omitted. 
' Set the ratio to 1.3 to draw a circle. 
62

The start point angle is defined as the first position where the circle 
will be drawn from. 

The end point angle is defined as the last position where the circle 
will be drawn to. 

L 57 counterclockwise 
U 
3. l4 
6. 28 
4. Tl 
when you only went to draw 90    of a circle the 
and point is calculated as follows. 
3.   l4><l90   /180   l= 1.57 
The rate is the ratio of the horizontal axis to the vertical axis of 
a circular geometric figure. 
' A value of l is a circle. 
Q A value of less than l causes a horizontal elipse to be drawn. 
' A value greater than l causes a vertical elipse to be drawn. 
When the ratio is less than 1, ahorizontal elipse is displayed. 
When the ratio is greater than l, a vertical elipse is displayed. 
radiusWn 
" f-I~ Remember that when the ratio is lass than 1. the 
L radius specification represents the maximum 
length of the radius. 

```
10 SCREEN 2 
20 C1RCLE(60,50), 40,1 
30 C1RCI.E(8fl,15l6), 50,1, -1.57, - 3.14,1 
40 CIRCLE (160,100), 6fl,1,,,2 
SB GOTO 50 
60 END 
```

Line 20 draws the circle. 


The parameters within the broken line can be omitted. 
1n line 30 the arc shown below is drawn. 
CIRCLE (85,156), 513,1, -1.57, - 3.14,] 
1.57 
3.14 

The minus sign connects the center of the circle 
with the start and end points. 

In line 40 a circle is drawn. 

F CIRCLE(l60,lB0), 60, 1, {Q},    _'      _2}i:} ,2 

The parameters inside the broken lines may be omitted 

#### PSET

Command to draw a dot 
 
T 350 PSET (X,Y), 15
This command draws a white dot at the graphic coordinates (X,Y). 
When no value is specified, X is preset to 320 and Y to 360. 

```
320 FOR1=1TO 500 
330 X = lNT(RND(1) is 256) 
340 Y =1NT(RND(1)* 91) 
350 PSET(X,Y), 15 
360 NEXT I 
```

These commands draw 500 white dots at the graphic coordinates 
(256,916). The first value indicates the horizontal position, and the 
second value indicates the horizontal position. 
9 _ _ 255 
90    
Format 
I1|u 
The falling snow can be colored black or red by changing the color code 

```
PSET (horizontal value , vertical value), color code 
```

#### PSET 

Command to draw a dot 
350 PSET (X,Y), 15 
This command draws a white dot at the graphic coordinates (X Y) 
When no value is specified, X is preset to 320 and Y to 360 
32B FOR l=l TO 500 
339 X = lNT(RND(1) * 256) 
340 Y =1NT(RND(l)4= 91) 
350 
360 
PSET(X,Y), 15 
NEXT 1 
These commands draw 500 white dots at the graphic coordinates 
(256,916). The first value indicates the horizontal position, and the 
second value indicates the horizontal position. 
0 Z55 
an 
Format 
,_
The falling snow can he 
changing the color code 
_ _ _ _ _ _ _ . . . . _ _ _ _ __| 
colored black or red by 
PSET (horizontal value , vertical value), color code 
65

###PRESET

Command to erase a point at a specified position. 

Format 

```
PRESET (horizontal value , vertical value), color code. 
```

If a color code other than the specified background is specified, 
it will be the same as the PSET color code. 
This is O.l(. 

All the commands which were used in the program "Snowman" 
have been explained. 
Enter the characters RUN. 

Heyl Why did you make the eyes dillerent colors? 



Command to set a point or extend 
DRAW a line. 
Format 
\ DRAW "character string"     
A point moves according to the specified character string and a 
figure is drawn. 
The DRAW command position is directed as specified by the 
characters U, D, L or R. The specified shape is drawn, within 
the number of dots specified for the range. 
l U 
+1 E     
L R 
. G F 
lL
o 
You can move an image an eight different dII9CUOHS, 
J ' _4 
2 
.3, _ 
'__________;, It's also very easy to draw an zigzag line. 
67

10 COLOR l5,l,1 
20 SCREEN 2 
30 DRAW "BM50,S0" 
40 DRAW "F60 G20 H60 E20" 
50 GOTO 50 
60 END 
Q RUN 
Line 10 defines the screen color. 
Line 20 defines the screen mode. 
1 30 DRAW"BM50,50" 
This statement specifies the point where the drawing will start 
68

Evan if you know the directions, it you don't know 
the starting point you can't draw anything. 

Format 

```
DRAW "BM X-coordinate, Y-coordinate"
40 DRAW "F60G20H60E20"
```

A rectangle will be drawn starting at the point (50,50). The sides 
of the rectangle will be then be drawn 60 dots to the lower right. 
20 dots to the lower left, 60 dots to the upper right and 20 dots 
to the upper right. 
5
'.   / 
60 
lt'a easy to change the length of a rectangle, but 
it's somewhat harder to change the angle. 
69

Next lets draw a number of rectangles in a row. 

```
10 COLOR 15,l,1 
20 SCREEN 2 
30 DRAW"BM50,50" 
40 FOR l=l TO 20 
50 DRAW"BM + 5,0" 
60 DRAW"F60Ci20H60E20" 
70 NEXT l 
80 GOTO 80 
90 END 
```

The statements in line 40 FOR l= 1 TO 20 and line 70 NEXT 1 
cause 20 rectangles to be drawn. However, they will all be drawn 
in the same position. ln order to see each separate rectangle, each 
rectangle should be moved over a little bit from the position of 
the previous rectangle. This is done by the command in line 50. 

```
50 DRAW"BM+5,0"
```

This statement moves the starting point of each rectangle that is 
drawn, 5 dots to the right each time. 

Format 

DRAW "BM " 
Vertical motion + moves down 
(Y coordinate) - moves up 
Horizontal motion + moves to the right 
(X coordinate) - moves to the left 

70

For example, the statement 

```
50 DRAW"BM+5,+2"
```

causes 20 rectangles which shift to the lower right side of the screen 
t0 be drawn. 

In the DRAW command, instead of using parameters enclosed 
in quotes like F60G20H60E20, character variables can also be 
used.
DRAW "X I? ;" 
character variable 

```
10 COLOR 15, 1,1 
20 SCREEN 2 
30 DRAW"BM50,50" 
40 FOR I= 1 TO 20 
50 DRAW"BM + 5,0" 
60 AS = "F60G20H60E20" 
70 DRAW"XA$;" 
80 NEXT l 
90 GOTO 90 
100 END 
```

When this program is run it produces the same results as the program 
on page 70. 

IIIII }-is __ )7 
C; The rectangles are layered like a row of dominoes. <>" v 
71 
"L 
is >.3" \r

_ . ' - - I . -rm .-   - .'%   -r:.11=ar.~~       -1' 
the Sprite figure 
.-     :- 1-": at     

Up to now we have been studying how to draw shapes using the 
LINE and CIRCLE commands, although using these commands 
to move figures is somewhat difficult. 

The SPRITE command is extremely useful for this purpose. Before 
studying the SPRITE command, lets learn a little bit more 
about the background, Sprite and boundary screens. In this case, 
the boundary screen is not used for screen display and will be 
omitted. 

itr Background Screen 

The background screen is used for graphics which do not 
move. Up to now, all of the LINE and CIRCLE commands 
have not been moved on the background screen. There are 
four modes for the background screen. The SCREEN command 
is used to change these modes. 

-Ir Sprite Screen 

The Sprite screen is used for the purpose of moving graphic 
figures. There are to 31 Sprite screen numbers which can 
be attached to the Sprite screen. This means that there are 32 
Sprite screens in all. The screen numbers are displayed in 
ascending order. Only one desired figure can be loaded at a 
time, from one screen to the next. However, if the Sprite screen 
number is changed, the same figure can be displayed on up 
to 32 screens.
1. 
This screen is only one layer. but there are actually 
33 layers. 
/ 
t.
72

If nothing is written on the Sprite screen, it is transparent; 
therefore up to 33 layers of images can be viewed on the 
monitor. 

Thus, when a figure drawn on a sprite screen at the back is 
over lapped by one drawn on a sprite screen nearer the front 
the overlapped portion of the figure at the back will disappear. 
This makes it possible to give display an appearance of 
depth. 

1 -1'    Q 
list    Q 
    '\    S" Background screen .5 
if-1: 55 " 
   \.\r ~%prite screen 
O 

Sprite SGIBSHS BIB UBHSDBIBHK BXCBDI where 
they contain figures. 
Q   g, 

ln order to use the Sprite function, the following steps are 
necessary. 

0 Either 8 X 8 dot or 16 >< l6 dot Sprite patterns must be defined. 
' The data for characters to be displayed using the Sprite function 
must be defined in character strings. 

' Both the Sprite screen number which the Sprite pattern will be 
displayed on, as well as the display size (standard or expanded) 
must be specified. 
0 Sprite patterns must be displayed on Sprite screens. 
73

Let's make a Sprite pattern. 
First an 8><8 dot figure must be defined. 
ln binary notation, a blank is expressed as 0 and a dark point 
as a l. 

```txt
Binary 
-' &Bl10l10flB = 
~ &BB10lf1000 =- 
-    &Bllll10f10 = 
-' &B1B1fllBOB = 
-~ &BBll10Bll = 
-~ &BD011111fl = 
-* &Bf11111110 = 
-* &B11000lll = 
Hexadecimal Decimal 
&HD8 
&H5fl 
&HF8 
&HAB 
&l-{73 
&H3E 
&H7E 
&HC7 
```

A Sprite pattern can be written like this, by using a character string 
composed of eight character codes. 

When the figure above is defined as a Sprite pattern, it is expressed 
by using a character string like this. 

```
CHR$(2l6) + CHR$(80) + CHR$(248) + 
CHR$(l68) + CHR$(l l5) + CHR$(62) + 
CHR$(l26) + CHR$(l99) 
```

If decimal notation is not used, either binary or hexadecimal expressions 
can be written as shown below. 

Binary 

```
CHR$(&BllB11000)+ CHR$(&B010lBflf10) + ..................... .. 
....................... .. CHR$(&B1100f1111) 
```

Hexadecimal 

```
CHR$(&HDH) + CHR$(&H5B) + .................................... .. 
............................... .. CHR$(&HC7) 
```

When binary or hexadecimal expressions are used, the following 
symbols must be used before the numbers. 


Binary &B 
Hexadecimal &H 
74

Up to 256 8 >< 8 dot Sprite patterns can be defined on the MSX computer. Each 
of them is given a special Sprite pattern number. 

Let's assign Sprite pattern number 0 to the pattern which was just created. 

```
SPRlTE$(0) = CHR$(2l6) + CHR$(8B) + 
CHR$(248)+ CHR$(l68)+ 
CHR$(l l5)+CHR$(62)+ 
CHR$(l26)+CHR$(l99) 
```

Command to define a sprite 

SPRlTE$ pattern 

Format 
```
SPRITE$ (pattern number)=figure expressed as a 
character string 
Sprite patterns can only be displayed in SCREEN modes l to 3. 
Sprite pattern sizes are determined as follows. 
SCREEN,fl ......................... .. 8x8 dot standard 
SCREEN,l ............. .. 8x8 dot expanded 
SCREEN,2....... ............. .. 16x16 dot standard 
SCREEN,3 ......................... .. l6x l6 dot expanded 
```

The PUT SPRITE command is used to display a Sprite pattern on the screen. 

Command to display a sprite 
```
PUT SPRITE 
```

Formal 

```
PUT SPRITE Sprite screen number, Sprite position, 
color code, Sprite pattern number 
```

```
10 COLOR l5,4,7 
20 SCREEN 2,0 
30 FOR N= l TO 8 
40 READ A : B$=B$+CHR$(A) 
50 NEXT N 
60 SPRlTE$(U)= B$ 
70 PUT SPRITE 0,(l28,96),l5,0 
80 GOTO 80 
90 END 
100 DATA 2l6,80,24fl,l68,ll5,62,l26,199 
```

@ RUN 

The upper left position is specified for the Sprite screen. 


The rabbit in the program above was displayed in white. 

```
70 PUT SPRITE B,(l28,96),l5,0
```

This command specified Sprite screen number 8, position 028,96), 
color code 15, and pattern number B to be drawn. 

If a Sprite pattern is not defined by the SPRlTE$ command before 
executing the PUT SPRITE command, nothing will be displayed 
on the screen. 

If line 28 is changed to 

```
20 SCREEN 2,1
```

and the program is run the rabbit will be twice as big as before. 
In this case, the 8 >< 8 Sprite dot pattern is expanded dot by dot 
to twice its original size. 
: 
lk-r 
L 
'::'.
:W'II.I ll The character string for the eer is 1 181 1888. Oh 
don't move! It iuet became 11888888. 
77

Binary and Hexadecimal Conversions 
Binary Number Decimal Number Hexadecimal Number 
B 0 7 B 
l l 
ID B) l\J 
ll 100 U) 
100 Ji vb 
101 kh LII 
l10 O\ O\ 
lll ~l \l 
1000         
1001 \O \O 
1010 10 I> 
10ll ll CD 
1100 12 O 
l10l I3 U 
C1110 14 l'!'l 
llll 15    T1 
To convert a binary to a hexadecimal number 
l10l10f10 fl1010f10 
ll ll 
D8 50 

To convert a hexadecimal number to a decimal number n 8=l3><l6+8><l=2l6 

l l 
l6   l6    
|| I ff   -r 
16 1 r       r,;, 
   . 

The rabbit pattern is the same when it is represented 
by character strings written in binary, decimal 
or hexadecimal. 

78 
fl    
i'
.,_\Q    
J1,

To move a Sprite pattern 

```
10 COLOR 1s,4,7 
20 SCREEN 2,1 
30 FOR N=l TO s 
40 READ mas = Bs + CHR$(A) 
sa NEXT N 
so SPRlTE$(8) = as 
70 PUT SPRITE 040,90), 15,0 
1z_,c"= lNT(RND(1)7*1_5) 
14 FOR l=_,l_ rogggsgs 
76__PUT SPRITE 0,srr-1;,-18,9), c, 0 
rs NEXT i 
an ooro 12 
90 END 
100 DATA 2l6,88,240,l68,115,62,126,l99 
```

The parts which are underlined are rewritten or modified. 
When this program is executed, the rabbit will change colors and 
move from right to left. The program can be stopped and started 
again by pressing the key. 

76 PUT SPRITE 0,STEP(- 1,5), C,fl

The rabbit can only be moved from position (fl,9fl) by using the 
STEP command to indicate the variation range (- L8). 


Format 

T STEP (horizontal variation, vertical variation) 1 
Why don't you try changing the parameters in the STEP( - 1,8) 
command of line 70 and observe the results? 
7 l 
vertical axis 
    to the top (-1 
. l 
. to the left l l to the right l-+-ll 
horizontal axis
to the bottom (~) l ._ 7 __
' Creating l6>< l6 Dot Patterns 
The increase in the 16 >< 16 pattern is quite evident. In binary 
notation blank points are expressed by B and dark points by l. 
I'm the binary rabbit. ll you make me a decimal 
rabbit, I'll be light and easier to wnte. 
80

Character strings in binary notation must be created in the ordt r 
shown below. 

```txt
01100001 
11110011 
10110011 
00110011 
10000000 
11000000 
01000000 
00100000 
00111111 . 
01111111 . 
11101101 
11111111
```

 QQ@   @@@    9      99   @ 
   
Q 
   
    
```txt
Character string DATA 
97, 243, 179, $1, 63, 127, 237, 255 
127, 63, 3|, 31, 3|, 63, 72,145 
I28, 192, 64, 32, 0, 128, 192, 192 
130, 55, 255, 250, 248, 248, 112, 224 
```
   IQ 
I'm those numbers. 
81

Enter the following modifications to the previous program. Except 
for these changes, it should run the same as it did before. 

```
20 SCREEN 2, 2 
30 FOR N=1TO 32 
100 DATA - - 
10 COLOR l5,4,7 
20 SCREEN 2,2 
30 FOR N=1 TO 32 
40 READ A : B$=B$+CHR$(A) 
50 NEXT N 
60 SPR1TE$(0)= B5 
70 PUT SPRITE 0,(128,96), 15,0 
80 GOTO 80 
90 END 
100 DATA 97, 243. 179, 51, 63. 127, 237, 255 
I10 DATA 127, 63, 31, 31, 31, 63, 72,145 
I20 DATA 128, 192, 64, 32, 0, 128, 192, 192 
130 DATA 130, 55, 255, 250, 243. 248, 112, 224 
```

Next time let's make it like this! 

ON SPRITE GOSUB 
SPRITE 

Format 

```basic
ON SPRITF. GOSUB litie number 1 
```

This command calls the subroutine starting at the specified Iittc 
when the locating of figures on two sprite screens are the sanic. 

Interruptions can be generated by 
QN/QFF/STQP using the SPRITE ON command. 

Format 

```
1 SPRITE ON
```
The subroutine specified by the ON SPRITE GOSUB contntand 
will then be executed. 
1 SPRITE OF}-' 

This command is used to prevent interrupts from being generated. 
After this command has been executed, the ON SPRITE 
GOSUB command can't be used until a SPRITE ON command 
is cxccutcd. 

```
ii SPRITE STOP
```

This command stops Sprite interrupts. The difference between 
this and the SPRITE OFF command is that when t is stopped, 
it is evaluated whether or not there was an error in SPRITE. 
lf therc is an error when Sprite is stopped, and the SPRITE ON 
command is executed, an interrupt is immediately generated. 
83

In this program. when Sprite screen number 0 and 1 are used and 
the program execution reaches line I40. the buzzer sounds tlurty 
times and the program stops. 
L
\
> 

```
10 SCREEN 2,1 
20 AS = CHR$(2l6) + CHR$(80) + CHR$(24B) + 
CHR$(l68)+CHR$(ll5)+CHR$(62)+ 
CHRSUZ6) + CHR$(l99) 
30 BS = CHR$(56) + CHRSUZ4) + CHR$(S6) + 
CHR$(254) + CHR$(56) + CHR$(56) + 
CHR$(68) + CHR$(l30) 
40 SPRlTE$(0)= A5 
50 SPRlTE$(l)= B5 
60 ON SPRITE GOSUB 130 
79 SPRITE ON 
80 FOR l=l) T0191 
90 PUT SPRITE 040+ l.96).l.0 
100 PUT SPRITE l.(255 -1.96). 10.1 
I10 NEXT I 
I20 END 
I30 SPRITE OFF 
140 FOR J =1 TO 30: BEEP: NEXT J 
150 RETURN 120 
S4
```

Drawing character on the graphic screen Y 
Up to now we've learned how to draw both text characters and 
graphics. However, the screen modes have been separated into 
text and graphic modes. Text and graphics couldn't be used 
together. 

The next program shows how to write text characters on a graphic 
screen. 

H0\)SE ~.~="J\ 
When you want to write text characters in the 
graphic mode, it must be specified first. 

```
19 SCREEN 2 
20 LINE(l2fl,110)-(l55,95),9 
30 LINE-(l90,l10),9 
49 LINE--(120,110), 9 
50 PAINT(l6B,105), 9 
65 LINE(l35,l4fl)-(175,118), l5,BF 
70 LINE(]55,l25)-(l65,115), 5,BF 
80 LINE(l40,l4B)-(l50,l2fl), l,BF 
90 OPEN"GRP:" FOR OUTPUT AS #1 
10fl DRAW"BMl2fl,7fl" 
110 PRINT # l,"HOUSE" 
126 CLOSE #1 
I39 GOTO 130 
143 END 
```

To write alphanumeric characters on a graphic screen execute the 
following command. 

90 OPEN "GRP:" FOR OUTPUT AS #1 4 

When this command is executed, the computer is informed that 
text characters can be written on the graphic screen. 

After this, the PRINT command can be used just like it is in the 
text screen mode. The characters "HOUSE" are written by executing 
the command 

```
' I10 PRINT # l,"HOUSE"
```

This specifies the beginning of the display position. 

```
L 100 DRAW "BM 120,70"
```

STEP 5 
[EH Music Class 
E" 
87

Let's study some of the commands which make music. These commands are 
BEEP, PLAY and SOUND. However the SOUND command is somewhat 
difficult so it won't be covered here. 

#### BEEP

This makes the buzzer sound. 

Format 

```
BEEP l 
```

Beeps the speaker. 

```basic
10 FOR l=l TO 10 
20 BEEP 
30 NEXT I 
49 END 
Q RUN 
```

The buzzer will ring 10 times

The BEEP command can't change the tone or length the tone will sound. 

can only talk like this. 

Beam Fla: - 

#### PLAY

This command performs music. 

Format 

```
l PLAY "character string" l 
```
Music expressed by a character string is played when this command 
is executed. 

```
l PLAY "CDEFRGAB" 
```

This instruction plays "Do Re Mi Fa", pauses briefly and then 
plays "So La Ti". 

The characters A to G each represent a note of the musical scale. 
character c D E F Q AlB 

Mi Fa So 

The character "R" represents a pause in the music. This is known 
as a rest. A melody can be played by entering PLAY, followed 
by the characters A to G or R enclosed in quotation marks. 

F ;.uJ~J~ir1'+"t"FHl 
J
CDEFGABCDEFGA FF?' A 
_W -O 
U l'|'l    U O 3' 
   U3 

octave O3 ocqave Q4 oemvq 05 
89 
note _La l Ti l


**Specifying Octaves**

The MSX computer can play eight octaves. In order to designate 
an octave use the letter "O" and a number (1 to 8). This 
must be written before the characters (A to G) which represent 
the tones of the scale. 

PLAY "O3 CDEFGAB O4 CDEFGAB 
O5 CDEFGAB" 

This plays the scale for three octaves. Once a value for 0 is 
specified, the same value is maintained until a new value for 
O is encountered. When the computer is turned on the preset 
value for O is (O4). 

Writing Sharps and Flats 

In order to be able to play a melody, it is also necessary to 
be able to play a half tone up (sharp) and a half tone down 
(flat). 

Sharps and Flats are written as follows. 

A half tone up ................. .. # or + are written immediately 
after the characters A to G. 
A half tone down ............. .. A minus sign " - " is written 
immediately after the characters 
A to G. 
The symbols " it ", " + ", and " - " are the same as the black 
keys on the piano. 
There are also some half tones which are exceptions. 
C-is B, F-is E,B+ is C and E+ is F 
Hey are there really that many black keys? %         __ ___', _ 
_i-;'.-   ./ Kl "' >1 
- llgrit' 
90

Writing the length of a tone 

If there is a tone length parameter after the characters representing 
the notes, those notes are played for the specified period 
of time. If there is no number following a note, that note is 
played for the length of time equal to the number following 
the character L 

```
PLAY "ClD2E4F8RlGl6A32B64" l 
```

The notes CDEF are gradually played faster and faster. After 
a rest the notes GAB are played even quicker. The tone length 
can be specified quite precisely by using a value from 1 to 64. 
l>PLAY "C4D4E4F4G4A4B4" l 

It's rather inconvenient to specify the time value of a quarter 
note for each note. In cases like this, it's easier to write it out 
as shown below. 

\ PLAY "L4 CDEFGAB" l 

Isn't it easier to write it out like that? 

If there are numbers following the characters A to G and R, 
the tones will be played according to the indicated length. The 
letter "L" is used to specify the tone length. The value specitied 
for L is maintained until a new value for L is encountered. 
When the computer is turned on the preset tone length value 
is "L4". 

h l 

note name Wno0tee I/2 note I/4 note l/8 note nI/o1t6e nHo3te2 
musical symbol 
value of L I 2 4 I 8 I6 32 
-Jami.    
9|

' Dotted notes 

A dotted note is a note followed by a dot. Its length is 1.5 times 
larger than the specified value for the tone length. 
A period after the numeric value for the time length indicates 
a dotted note. 

"men dwohtote]d dotted dotted dotted dVot1te6d dUot3te2d ame e 
l/2 note l/4 note l/8 note 
note note note 
musical symbol    ' 
tonelength 04-J J+J J+fi [113    ht' $,,) 
specified value l. 2. 4. 8. 16. 32. 
La 
;. x )1, 
it 

A dotted note is played iust like it ls written. 

Writing rests 

A rest is a pause in the melody. Rests are written the same way 
notes are. The number following the R specifies the value of 
the rest. 
musical symbol "' * I 7 '7 :7 5 
value of R I 2 4 8 I6 32 64 
whole l/I6 I./32 I/64 
rest name l/2 rest I/4 rest l/8 rest 
rest rest rest rest 
92

Setting the Tempo 

The tempo within an entire piece will speed up and slow down 
at times. This is accomplished by using the T parameter followed 
by a number from (32 to 255). The larger numbers indicate 
faster tempos. 

A value indicated for the parameter will be maintained until 
another T value is encountered. When the computer is turned 
on the preset value for the tempo is T120. 

Setting the volume 

The V parameter and the numbers which follow (l to 15), indicate 
the volume. 

PLAY "LlV3CV6DV9EVl2FVl5G" l 

The volume will gradually increase as the scale is played. 
When V is specified there is no sound at all. 
When the computer is turned on, the preset value for the volume 
is V8. 

Specifying the tone 

To change the tone color, use either the S or M parameter followed 
by a number. 

S changes the envelope shape. 
M changes the envelope cycle. 

The envelope can be specified by using the S and M parameters. 

The cycle pattern of the volume is changed when this occurs. 

At this time the vibrato characteristic is specified by the S 
parameter, and the vibrato speed is specified by the M 
parameter. 

The S and M parameters should be used as a pair. The S and 
M parameters can not be used at the same time as the V 
(volume) parameter. 
93

The following program changes the tone and plays the scale. 

```
IB FOR S=B TO I4 
29 FOR M = 1000 TO 10000 STEP 2000 
30 PLAY "S = S;M = M;CDE" 
40 NEXT M 
50 NEXT S 
60 END 
```

The value of the S parameter can be specified from 0 to l5. 

The value of the M parameter can be specified from 1 to 65535 
l PLAY "SIQMSBBB CDEFGAB" 

Try changing the numeric values which follow the S and M 
parameters to produce a variety of different tones. 
   t@l"l3W \ 1?    L

Now let's make the MSX computer perform "Home on the Range' ' . 

```
10 PLAY "Tl28" 
20 PLAY "O4L4CCFGA2L8FED4. B - B - 4" 
30 PLAY "B - ZAB - O5C204FFF4. EF4G2 
40 PLAY "G2L4CCFGA2L8FED4. B - 8B - 4" 
50 PLAY "B - 2B - B - A4. GF4E4. FG4F2." 
66 END 
```

E. ii-..q   % '1 "lee * 
note C 
length 4 an       Tl so ~> 
Cl 
.*-vql-I] =='   'v:laem"-*-Q 
-L.   L ll: 
G Q kl @   II @   I\ bi 
> tn 
corn 0-n NO 
-mill" u-n   - Qbfi QN) 
$31 _ 
MO an    "W 
   FE 0 -B 
BB 4 l 
et F I ll ti ea H a.- NI an Q ."> Q0 as-vi P 
FG F 
84 2 
95

(   Cl|,(SEII,l   G$l 

The MSX computer isn 9 t all that simple. It can also play two and 
three note chords. 

For example, to play C E G at the same time, place a comma 
between the notes of the chords as shown below. 
 

Once you can play a scale, your repetoire will increase 
considerably. 

  ,Y"F 1; 
' 1/I,'5~    "I :5:-1"-

Sample Programs

Sample l 

```
10 REM COLOR GRAPHICS 
20 SCREEN 2 
30 COLOR 15, I, 1 
40 C = I 
50 FOR X=35 TO 215 STEP 30 
60 FOR Y=35 TO 155 STEP 30 
70 PLAY "Vl4L6406A" 
80 CIRCLE (X, Y), 30, C 
99 PAINT (X, Y), C 
100 C = C + 1 
I10 IF C>l5 THEN C=1 
I20 NEXT Y 
130 NEXT X 
140 GOTO 140 
159 END 
```

When RUN is entered, this program draws circles in I5 colors 
across the entire screen. To stop the program, press + 
STOP . 

Sample 2 


```
10 REM KEYBOARD ORGAN 
20 SCREEN 1 
30 COLOR 1, 3, 3:CLS 
40 LOCATE 4, 1:PRlNT "KEYBOARD ORGAN" 
50 PRINT " l_'l_l_l_l_l-lfi " 
60 PRINT "KEY IAIDIFIHI JIKI ; |" 
70 PRINT " l-l-l-l-l-l--l-l " 
SBPRINT" I-|+l+|+I+|+|+l" 
99 PRINT "NOTEIBICIDIFIGIAICI" 
I90 PRINT " " 
IIB PRINT " l_T__l-I_l__l'jfi-l_l-l " 
I20 PRINT "KEY IZIXICIVIBINIMI , I . |/l " 
I35 PRINT " |-l-l--l-+--l--+-l-l-%--l " 
I45 PRINT "NOTElBlClDlEl FIGIAIBICIDI " 
I50 PRINT " l__|__L_I_l_L_l_I_l_.l_.| " 
I65 PRINT "PLAY NOTES BY PRESSING KEYS 
(Z-/9 A_ I) 
I70 A$=INKEY$:IF A$= " " THEN 1'/B 
I80 IF A$= " Z " THEN PLAY "O3B" 
I95 IF A$=" X " THEN PLAY "04C" 
2% IF A$= " C " THEN PLAY "O4D" 
ZIU IF A$= " V " THEN PLAY "O4E" 
Z20 IF A$=" B " THEN PLAY "O4F" 
230 IF A$= " N " THEN PLAY "O4G" 
Z45 IF A$=" M " THEN PLAY "O4A" 
Z59 IF A$=" , " THEN PLAY "O4B" 
Z60 IF A$=" . " THEN PLAY "QSC" 
279 IF A$=" / " THEN PLAY "O5D" 
280 IF A$= " A " THEN PLAY "ose-" 
Z99 IF A$= " D " THEN PLAY "O4C+ " 
399 IF A$=" F " THEN PLAY "O4D+" 
310 IF A$=" H " THEN PLAY "O4F+" 
320 IF A$=" J " THEN PLAY "O4G+" 
339 IF A$=" K " THEN PLAY "O4A+" 
345 IF A$=" Z " THEN PLAY "OSC+" 
350 GOTO I79 
360 END 
```

To stop the program, press CTRL + STOP . (Press the keys in 
the uppercase mode.) 

The graphic symbols in lines 50 to 150 are only included to 
make the screen more readable, and may be omitted. 


Sample 3 

```basic
10 REM ANIMATION 
20 SCREEN 2, I 
30 COLOR I5, I, l:CLS 
40 LINE( 0, ll4)-(255, 114), 2 
50 PAINT ( 56, I36), 2 
60 LINE( 10, 50)-( 60, 114), 10, BF 
76 LINE ( 60, 114)-(llB, 70), 9, BF 
80 LINE (I10, 4fZI)-(I60, I14), I3, BF 
90 LINE (I60, ll4)-(20fl, 60), I2, BF 
100 LINE (200, 3fl)-(25$, 114), 14, BF 
l10 FOR l=l TO ID 
120 READ X, Y, XI, Yl 
138 LINE (X, Y)-(Xl, Yl), 1, BF 
140 NEXT I 
I50 FOR l=l TO 8 
160 READ A:A$=A$+CHR$(A) 
I70 NEXT I 
189 FOR l=l TO 8 
I90 READ B:B$=B$+CHR$(B) 
Zf10 NEXT I 
210 FOR l=l TO 8 
220 READ C:C$= C$+ CHR$(C) 
230 NEXT I 
249 SPRITE$(fl)= A$ 
250 SPRlTE$(l)= B$ 
260 SPRITE$(2)= C$ 
270 X=fl:Y= 100 
280 PLAY "Sl3Ml5flF A F A F A F A F A F A 
290 PUT SPRITE D, (X, Y), 8, 0 
300 PUT SPRITE 1, (X, Y), l, 1 
310 PUT SPRITE 2, (X, Y), I5, 2 
320 X = X +1 
330 IF X>2S5 THEN X=0 ELSE 290 
340 GOTO 289 
350 END 
360 DATA I5, 
370 DATA 65, 
380 DATA 95. 
390 DATA 120, 
400 DATA I85, 
410 DATA l6, 
420 DATA 0, 
60, 30, 
75, 75, 
75, 105. 
70, I50, 
70, 195, 80, 210, 
0, 32,112, 32, 
0, 4, B, 0, 
80, 40, 
85, 80, 
85, 120, 
80, 165, 
60, 55, 
75, 99, 
50, 150, 
70, 175, 
40, 245. 
0, 9, 
0, 68, 0 
430 DATA 0, 252, 216, I43, 233, 255, B, 
```

When RUN is input, an ambulance runs across the screen from 
left to right while sounding its siren. To stop the program, press 
+-
100

Graphic Screen Design Sheets 
e 5 _ 1 I    _:::::::::::::::::::: #::::::::: 
i:i:i:i:i:i:i:i:i:i: s-:::::::::: IIIIIIIII 

lIla   "

E 
IIIIIII 
IIIIIIIIIIIIIIII 
IIIIIIII 
IIIIIIIII 
IIIIIIIII 
IIIIIIIII 
IIIIIIIII 
IIIIIIII 
IIIIIIII 
IIIIIIII 
IIIIIIIII_ 
IIIIIIIII 
IIIIIIIII 
g- _IIIIIlI:InIlIlIllIlIl .IIIIIIIIIIIIIIIIIIIII IIIIIIIIIIIIIIIIIIII IIIIIIIIIIIIIIIIIII 
IIIIIIIIIIIII - 
II IIIII IIIIII I 
IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
g_ IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII_    
- IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII    - 
V IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
IIIIIIII:-IIIIIIIIIIIIIIIIIIIIIIIIIIII 
IIIIIIII IIIIIIIIIIIIIIIIIIIIIIIIIIIII 
II 
II 
IIIIIIIIIII 
mg IIIIIIIII 
" IIIIIII 
IIIIIIIIIIIIIIII Q IIIIIIIII _IIIIIIIIIIIIIIIIIIIIII 
m_I 
IIIIIIIIIIIIIIIIIIIIIIIIIIIIEli
"III
IIIIIIIIIIIIIII   El
M FIII 
102

Sprite Design Sheets (8x 8) 
Eiiiii IIIIIIII 
:i:i:i:i:i:i:i:i IIIIII :::: 
Sprite Design Sheets (16>< 16) 
:::::::::::::::I IIIIIIIIIIIIIIII 
I-IIIII IIIIIIII iiiiiiiiiiiiiiii IIIIIIII IIIIIIII 
103 
  ii:ii-ii! .'i:i-i:!:!:!i


## INDEX 

* [AUTO](#auto)
* [BEEP](#beep)
* [Cl-1RS](#a)
* [CIRCLE](#a)
* [CLS](#cls)
* [COLOR](#color)
* [CONT](#cont)
* [DELETE](#delete)
* [DRAW](#draw)
* [END](#end)
* [FOR~NEXT](#for-next)
* [GOSUB-RETURN](#gosub-return)
* [GOTO](#goto) 
* [IF~THEN](#if-then)
* [IF~THEN~ELSE](#if-then-else)
* [INT](#int)
* [INKEY$](#inkey)
* [INPUT](#input) 
* [KEY](#key)
* [LINE](#line)
* [LIST](#list)
* [LOCATE](#locate)
* [NEW](#new)
* [ON SPRITE GOSUB](#a)
* [PAINT](#paint)
* [PLAY](#play)
* [PRINT](#print)
* [PRESET](#preset)
* [PSET](#pset)
* [PUT SPRITE](#put-sprite)
* [READ-DATA](#read-data)
* [REM](#rem)
* [RENUM](#renum)
* [RESTORE](#restore)
* [RND](#rnd)
* [SCREEN](#screen)
* [SPRITE ON/OFF/STOP](#a)
* [SPRITES](#sprites)
* [STOP](#stop)

Printed in Japan 
