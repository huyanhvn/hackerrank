arr = [0,0,0,0,0,0]
$mover = "Alice"
$moved = "Bob"
$i = 0

def recurse(a)
  $i += 1
  possibles = a.map.with_index {|_,i| (a[i-1] == 0 && a[i+1] == 0 && i != 0 && i != a.size ? i : nil) }.compact
  if possibles.empty?
    puts $moved
  else
    possibles.map { |x|
      a1 = a.clone
      a1.delete_at(x)
      $mover, $moved = $moved, $mover
      puts "index = #{x}, recursing #{$i}..." + a1.inspect
      recurse(a1)
    }
  end
end

recurse(arr)