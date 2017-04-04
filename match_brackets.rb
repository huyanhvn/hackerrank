=begin Check if a string of brackets are closed properly
Example input :   match_brackets(["({[]})","][}","{}()[]"])
Example output:   ["YES", "NO", "YES"]
=end

def match_brackets(values)
  out = []
  matching = {'{' => '}','[' => ']','(' => ')'}

  values.each_with_index do |str,i|
      openings = []
      all_matched = true
      str.split('').each do |b|
        if b == '{' || b == '[' || b == '('
          openings.push(b)
        else
          if b != matching[openings.pop]
            all_matched = false
            break
          end
        end
      end
      openings.empty? && all_matched ? out[i] = 'YES' : out[i] = 'NO'
  end

  return out
end

