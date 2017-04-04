=begin
Example input :  find_median("1 5 5 2 3")
Example output:  3
=end
def find_median(str)
  line = str.strip.split(" ").sort
  lsize = line.size
  puts lsize % 2 == 1 ? line[lsize / 2] : (line[lsize / 2 - 1].to_f + line[lsize / 2].to_f) / 2
end
