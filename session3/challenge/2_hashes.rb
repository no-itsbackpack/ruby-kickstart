# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
# 
# Examples:
# staircase 1  # => { 1 => [] }
# staircase 2  # => { 1 => [] }
# staircase 3  # => { 1 => [], 3 => [2] }
# staircase 4  # => { 1 => [], 3 => [2] }
# staircase 5  # => { 1 => [], 3 => [2], 5 =>[2, 4] }

def staircase n
		h = Hash.new { |hash, key| hash[key] =[]}

		(1..n).each do |x|
				h.delete_if{|key,val| key.even?}
				if x.odd?
					h[x] = (1..x).step(1).to_a.select {|x| x.even?}
				end
		end

		return h

end