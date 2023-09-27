#!/usr/bin/env ruby

if ARGV.length != 2
    puts "Veuillez passer exactement deux arguments"
    exit
end

if ARGV[0] !~ /\A-?\d+(\.\d+)?\z/ or ARGV[1] !~ /\A-?\d+\z/
    puts "Erreur (Une des deux entrées n'est pas un nombre)"
    exit
end

nb = ARGV[0].to_i
expo = ARGV[1].to_i
result = 1

if expo < 0
    puts "Erreur (exposant negatif)"
    exit
end

expo.times do
    result *= nb
end

puts result