=begin
Example input : count_occurrences("aaaaabbbbbbcccccdrrrrstu")
Example output: "a5b6c5dr4stu"
=end

def count_occurrences(s)
  str = s.split('')
  res = ""
  str.uniq.each do |c|
    count = str.count(c)
    count == 1 ? res = res + c : res = res + c + count.to_s
  end
  puts res
end