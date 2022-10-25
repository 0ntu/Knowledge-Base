---
header-includes:
  - \let\emphasized\emph
  - \let\strong\textbf
  - \renewcommand{\emph}[1]{\textcolor{red}{\emphasized{#1}}}
  - \renewcommand{\textbf}[1]{\textcolor{blue}{\strong{#1}}}
---

# The Very Basics

String literals are delimited by **"**

Comments: //
- Ignored by the Compiler
- Describe what the program is intended to do
- Provide Info useful for humans

Output Operator: **<<**
- "Put into"

**#include** directive:
- Make facilities from file available
- Puts all code in that file, directly into the current file
- Suffix *.h*

Function parts:
- **Return type**
- **name**
- **Parameter List**: enclosed in parentheses
- **Function Body**: enclosed in curly braces

`main()` function
- All C++ programs start by executing

Compilation Steps:
Source Code -> Compiler -> Object Code -> Linker -> Executable

`cout` - character output, use `<<` to output characters into console
`cin` - character input, use `>>` to get characters into program

# Objects, Types, Values

**object** - a region of memory with a *type* that specifies
what kind of information can be placed in to it
- A named object is called a variable

**Definition** - a statement that defines a variable
- Usually should include an initial value

*Initialization* - Giving a variable its initial value
*Assignment* - Giving a variable a NEW value

`++i`: Modifies then evaluates
`i++`: Evaluates then modifies

## Names

Starts with only a letter
- Letters
- digits
- underscores

Case-sensitive
Use underscores to separate words in an identifier
Initial-Capital-Letter for types we define

## Types and Objects

Type - defines a set of possible values and set of operations for an object
Object - memory that holds a value of a given type
Value - set of bits in memory interpreted according to type
Variable - named object
Declaration - gives a name to an object
Definition - type of declaration that sets aside memory for an object

Every *type* is the same size

## Type Safety
**Always initialize variables**

Uninitialized variables give hardware errors when used

**Safe Conversions** - no information is lost
- Smaller (or equal) type gets converted to a bigger (or equal) type

Unsafe Conversions - value implicitly turned into a value of another
type that does not equal the original value

### Better Notation

Introduced in **C++11**
Use the `{}`-list notation, rather than the `=` notation
```
double x {2.7};		//OK
int y {x};		//Gives error
```
# Computation
Producing *outputs* based on some *inputs*
- *arguments*: inputs to a part of a program
- *results*: outputs to a part of a program

## Objectives and Tools
Always write code prioritized
- Correctly
- Simply
- Efficiently

*Abstraction* - Hide details we don't need to use a facility behind a
convenient and general interface
*Divide and Conquer* - Take a large problem and divide it into several
little ones

## Expressions

Computes a value from a set of operands using operators
Most basic building block of programs

Mathematical rules of operator precedence apply (PEMDAS)

### Constants

Named object to which you can't give a new value after it has been
initialized

*magic constants* - non-obvious literals in code
* Avoid, makes code unreadable
* Doesn't explain what the constant is

`const` - variable that cannot be changed after initialization
* C++98 did not have `constexpr`
* Variables unknown at compile time

`constexpr` - constant that is computed during compile time
* Performance improv. over `const`
* Becomes an integer value composed **only of constants**
* Must be given a value known at compile time

## Operators
See *pg. 98*

**lval** - value that can appear on the left-side of an assignment

Do **not** write expressions with two comparison operations
```
a<b<c		// Does not mean "Is b between a & c?"
(true)<c	// Means this instead
```
## Conversions

If an *operand* has a type **double**, compiler uses floating-point arithmetic
If it's both **ints**, compiler uses integer arithmetic

Notation `type{value}` prevents narrowing, while `type(value` does not.

## Statements

Executed in the order they are written

Types:
- Expressions
- Declarations
- Empty Statement
- `if`-statement
- `switch`-statement
- `while`-statement
- `for`-statement

**Empty Statement** - condition always results in no effect
```cpp
if (y==5);
```

Statements without effects are typically logical errors,
Expression statements are typically assignmnets, I/O statements, or function calls

**Blocks** are delimited by *{ and }*

### If-Statement
Selects between two-alternatives, executes if condition true
```cpp
if (a<b) {
	...
}
```

### Switch-Statement
Clearer than nested [if-statements][If-Statement]
Terminated by a **break**
If doesn't match any case labels, **default** will be executed

1. Must be integer, char, or enumeration type
2. case labels must be constant
3. You cannot use the same value for 2 case labels
4. You can use several case labels for a single case
5. Terminate each case with a *Break*
```cpp
switch(a) {
case'0': case'2':
	...
	break;
default:
	break;
}
```
### While-Statements
Repeat while condition is true
```cpp
while(i<100) {
	...
}
```
### For-Statements
Iterates over a sequence of numbers
*Control Variable* is concentrated at the top

Initializer, Condition, increment operation
```cpp
for (int i=0; i<100; ++i) {
	...}
```
**Never modify** the loop variable inside the body of a `for`-statement

## Functions

