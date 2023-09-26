#!/usr/bin/env ruby

if ARGV.length != 3
    puts 'Veuillez fournir exactement trois arguments.'
    exit
end
  
a, b, c = ARGV.map(&:to_i)
  
if a == b or b == c or a == c
    puts 'Erreur'
    exit
end
  
if (a > b and a < c) or (a < b and a > c)
    puts a
elsif (b > a and b < c) or (b < a and b > c)
    puts b
else
    puts c
end