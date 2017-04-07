#!/bin/ruby

=begin
https://www.hackerrank.com/contests/w30/challenges/candy-replenishing-robot
=end

n,t = gets.strip.split(' ')
n = n.to_i
t = t.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

t_count = 0
bob = 0
remain = n

while t_count < (t - 1)
  remain -= c[t_count]
  if remain < 5
    bob += (n - remain)
    remain = n
  end
  t_count +=1
end

puts bob
