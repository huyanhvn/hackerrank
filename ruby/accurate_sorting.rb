#!/bin/ruby
=begin
https://www.hackerrank.com/contests/w31/challenges/accurate-sorting
=end

def swap(arr,n)
  arr.each_with_index { |e,i|
    i == (n - 1) && return
    if (e - arr[i+1]) == 1
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
  }
end

def ascending? arr
  arr.each_cons(2).all?{|i,j| i - j == -1}
end

q = gets.strip.to_i
for a0 in (0..q-1)
    n = gets.strip.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    # Write Your Code Here
    swap(a,n)
    puts ascending?(a) ? "Yes": "No"
end
