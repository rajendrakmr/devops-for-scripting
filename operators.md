
---
# Bash Scripting Basics
## Before Advanced Concepts — Must Know Basics
- Operator List
  - Comparison Operators (strings)
```bash
  =    equal
  !=   not equal
  <    less than (ASCII)
  >    greater than (ASCII)
  -z   string is empty
  -n   string is not empty 

name="chichu"
empty=""

[[ "$name" = "chichu" ]] && echo "match"
[[ "$name" != "admin" ]] && echo "not admin"
[[ "$name" > "abc" ]] && echo "lex greater"
[[ -z "$empty" ]] && echo "string is empty"
[[ -n "$name" ]] && echo "string not empty"

```

  - Comparison Operators (numbers)
```bash
  -eq   equal
  -ne   not equal
  -gt   greater than
  -ge   greater or equal
  -lt   less than
  -le   less or equal

a=10
b=5

[[ $a -eq $b ]] && echo "equal"
[[ $a -ne $b ]] && echo "not equal"
[[ $a -gt $b ]] && echo "a greater"
[[ $a -lt $b ]] && echo "a smaller"
[[ $a -ge $b ]] && echo "a >= b"
[[ $a -le $b ]] && echo "a <= b"


```


  - Assignment Operators 
```bash
   =    # assign
  +=   # add & assign
  -=   # subtract & assign
  *=   # multiply & assign
  /=   # divide & assign
  %=   # mod & assign


x=5
((x+=3))   # x = x + 3
((x-=2))   # x = x - 2
((x*=4))   # x = x * 4
((x/=2))   # x = x / 2
((x%=3))   # x = x % 3

echo $x

```


  - Arithmetic Operators  
```bash
  +   # addition
  -   # subtraction
  *   # multiplication
  /   # division
  %   # modulus
  **  # exponentiation 

a=10
b=3

echo $((a + b))   # addition → 13
echo $((a - b))   # subtraction → 7
echo $((a * b))   # multiplication → 30
echo $((a / b))   # division → 3
echo $((a % b))   # modulus → 1
echo $((a ** b))  # power → 1000

```


  - Logical Operators  
```bash
  &&   AND
  ||   OR
  !    NOT

a=10
b=3

[[ $a -gt 5 && $b -lt 5 ]] && echo "AND works"
[[ $a -lt 5 || $b -lt 5 ]] && echo "OR works"
[[ ! $a -lt 5 ]] && echo "NOT works"

```


  - File Tes  
```bash
  -e   file exists
  -f   regular file
  -d   directory
  -r   readable
  -w   writable
  -x   executable
  -s   file not empty

file="test.txt"
dir="mydir"

[[ -e $file ]] && echo "exists"
[[ -f $file ]] && echo "regular file"
[[ -d $dir ]] && echo "directory"
[[ -r $file ]] && echo "readable"
[[ -w $file ]] && echo "writable"
[[ -x $file ]] && echo "executable"
[[ -s $file ]] && echo "not empty"

```

  - Redirection Operators
```bash
  >     overwrite output
  >>    append output
  <     input
  2>    stderr
  &>    stdout + stderr

echo "Hello" > out.txt        # overwrite
echo "World" >> out.txt       # append
cat < out.txt                 # input
ls nofile 2> error.txt        # stderr
ls . &> all.txt               # stdout + stderr

```