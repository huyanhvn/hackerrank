=begin Count all palindrome substrings
Example input : count_palindrome("aabaa")
Example output: 5

*** ALERT: Not efficient for very long string ****

=end

def count_palindrome(str)
  sum = 0
  (0...str.size).flat_map { |i| (i...str.size).map { |j| str[i..j] } }.uniq.each do |s|
    sum +=1 if s == s.reverse
  end
  puts sum
end
