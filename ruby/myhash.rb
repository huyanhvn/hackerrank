=begin Hash table implementation in Ruby

huy = MyHash.new
huy.insert('k1', 1)
huy.insert('k2', 2)

puts huy.query('k2')

huy.update('k2',3)

puts huy.query('k2')

=end

class MyHash
	attr_accessor :keys
  attr_accessor :values

  def initialize
    @keys = []
    @values = []
  end

  def insert(k,v)
    @keys.unshift(k)
    @values.unshift(v)
  end

  def update(k,v)
    idx = @keys.index { |i| i == k}
    @values[idx] = v
  end

  def query(k)
    idx = @keys.index { |i| i == k}
    return @values[idx] unless idx.nil?
  end    
end

