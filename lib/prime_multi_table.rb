# Main method to print out first n prime multi table
def prime_multi_table(num)
  print "Printing first #{num} prime multi table: \n"

  # Get first n primes in array
  top_primes = n_primes(num)

  # Print out the multi table for the primes
  print_multi_tables(top_primes)
end

# Return first n primes in array
def n_primes(n)
  return [] if n < 1
  prime_arr = [2]
  num = 3
  while prime_arr.length < n
    prime_arr << num if is_prime?(num)
    num += 2
  end
  prime_arr
end

# Check if a num is a prime
def is_prime?(num)
  return false if num <= 1
  2.upto(Math.sqrt(num).ceil) {|i| return false if num % i == 0}
end

# Print out the multi table for the input array
# Printing first 10 prime multi table:
#     |    2    3    5    7   11   13   17   19   23   29
# -------------------------------------------------------
#    2|    4    6   10   14   22   26   34   38   46   58
#    3|    6    9   15   21   33   39   51   57   69   87
#    5|   10   15   25   35   55   65   85   95  115  145
#    7|   14   21   35   49   77   91  119  133  161  203
#   11|   22   33   55   77  121  143  187  209  253  319
#   13|   26   39   65   91  143  169  221  247  299  377
#   17|   34   51   85  119  187  221  289  323  391  493
#   19|   38   57   95  133  209  247  323  361  437  551
#   23|   46   69  115  161  253  299  391  437  529  667
#   29|   58   87  145  203  319  377  493  551  667  841
def print_multi_tables(arr)
  padding = (arr.last.to_s * 2).length
  print "".rjust(padding) + "|"
  arr.each {|num| print " #{num.to_s.rjust(padding)}"}
  print "\n" + "-" * (padding + 1) * (arr.length + 1) + "\n"
  arr.each do |num1|
    print num1.to_s.rjust(padding) + "|"
    arr.each do |num2|
      print " " + (num1 * num2).to_s.rjust(padding)
    end
    print "\n"
  end
end

if __FILE__ == $PROGRAM_NAME
  if ARGV.length == 1 && ARGV[0].to_i > 0
    input_num = ARGV[0].to_i
  else
    input_num = 10
  end
  prime_multi_table(input_num)
end
