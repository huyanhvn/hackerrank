=begin PriorityQueue implementation in Ruby

q = MyPQ.new
q.insert('i1',1)
q.insert('i2',2)
q.insert('i4',4)
q.insert('i3',1)
q.insert('i5',1)
puts q.serve
puts q.serve
puts q.serve
puts q.serve
puts q.serve

=end

class MyPQ

  def initialize
    @queue = []
  end

  def insert(item,pr)
    idx = @queue.index {|i| i.values[0] >= pr}
    if idx.nil?
      @queue.push({ item => pr })
    else
      puts idx
      @queue.insert(idx, { item => pr })
    end
  end

  def serve
    next_in_queue = @queue.pop
    puts next_in_queue.keys[0] unless next_in_queue.nil?
  end
end
