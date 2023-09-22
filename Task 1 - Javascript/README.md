# Wax-Interactive-Coding-Task-Javascript
Create a JS function that takes an integer as input and returns an object in the following format:

{
  "sum-of-digits-divisible-by-2" : true,
  "sum-of-digits-divisible-by-3" : true,
  "sum-of-digits-divisible-by-4" : false,
  "sum-of-digits-divisible-by-5" : true
}

Each key value pair details whether the sum of all digits of the input number is divisible by a certain number (in the range of 2-5).

Example inputs with outputs:

input: 
37
output:
{
  "sum-of-digits-divisible-by-2" : true,
  "sum-of-digits-divisible-by-3" : false,
  "sum-of-digits-divisible-by-4" : false,
  "sum-of-digits-divisible-by-5" : true
}

input:
998765543211
output:
{
  "sum-of-digits-divisible-by-2" : true,
  "sum-of-digits-divisible-by-3" : true,
  "sum-of-digits-divisible-by-4" : true,
  "sum-of-digits-divisible-by-5" : true
}

input:
11119
output:
{
  "sum-of-digits-divisible-by-2" : false,
  "sum-of-digits-divisible-by-3" : false,
  "sum-of-digits-divisible-by-4" : false,
  "sum-of-digits-divisible-by-5" : false
}

Notes:
The function should be written in such a way that the number of key pairs given in the output can be easily expanded (e.g. using the range 2-20 instead of 2-5).
Emphasis should be on code readability and simplicity rather than code size

Please supply code as a .js file.


LINK: https://docs.google.com/document/d/1RXblCPg19gPqBAjg1up_NQNecm3aK8FHYuNzaYsKwLk/edit