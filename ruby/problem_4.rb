# A palindromic number reads the same both ways. The largest palindrome made
#   from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

highest_found = 0

999.downto(100) do |n|
  break if (n*n) < highest_found

  n.downto(100) do |n2|
    candidate = (n*n2).to_s
    if candidate == candidate.reverse && candidate.to_i > highest_found
      highest_found = candidate.to_i
    end
  end
end

puts highest_found
