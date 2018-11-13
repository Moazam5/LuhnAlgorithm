# LuhnAlgorithm

The Luhn algorithm or Luhn formula, also known as the "modulus 10" or "mod 10" algorithm, 
is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers, 
IMEI numbers, National Provider Identifier numbers in the United States, Canadian Social Insurance Numbers, 
Israel ID Numbers and Greek Social Security Numbers (ΑΜΚΑ). It was created by IBM scientist Hans Peter Luhn and 
described in U.S. Patent No. 2,950,048, filed on January 6, 1954, and granted on August 23, 1960.

How it works:

The formula verifies a number against its included check digit, which is usually appended to a partial 
account number to generate the full account number. This number must pass the following test:

1. From the rightmost digit, which is the check digit, and moving left, double the value of every second digit.
   The check digit is not doubled; the first digit doubled is immediately to the left of the check digit.
   If the result of this doubling operation is greater than 9 (e.g., 8 × 2 = 16), then add the digits of 
   the product (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9) or, alternatively, the same result can be found by subtracting 9 from 
   the product (e.g., 16: 16 − 9 = 7, 18: 18 − 9 = 9).
   
2. Take the sum of all the digits.

3. If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.



The project is an example of how to implement a checking algorithm. Here the lenght of the id should be 4 but it can be easily 
changed to accept any lenght. 
This is a very basic project. Once right id has been entered, it takes the user to next view controller.
