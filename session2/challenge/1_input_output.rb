# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  line = gets
  line.strip!
  int = line.split(' ')
  x = int[0].to_i
  y = int[1].to_i
  sum = x + y
  product = x * y
  difference = x - y

  puts "#{sum}\\n#{difference}\\n#{'product'}"
end