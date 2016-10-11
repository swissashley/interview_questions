# Multiplication Table for first N Primes

## Objective

Write a program that prints out a multiplication table of the first 10 prime number.

● The program must run from the command line and print one table to STDOUT.

● The first row and column of the table should have the 10 primes, with each cell

containing the product of the primes for the corresponding row and column.

## Notes

● Consider complexity. How fast does your code run? How does it scale?

● Consider cases where we want N primes.

● Do not use the Prime class from stdlib (write your own code).

● Write tests. Try to demonstrate TDD/BDD.

● If you’re using external dependencies please specify those dependencies and how to install them.

## Usage
`ruby lib/prime_multi_table.rb` prints out a multiplication table of the first 10 prime number.

`ruby lib/prime_multi_table.rb 20` prints out a multiplication table of the first N prime number (where N = 20 in this case).

### RSpec Testing
`bundle install` installs rspec gem.

`be rspec` runs rspec.
