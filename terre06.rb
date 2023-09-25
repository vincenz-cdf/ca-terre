#!/usr/bin/env ruby

if ARGV.length == 0 or ARGV.length > 1
    puts "Veuillez passer exactement un argument"
    exit
end

chaine = ARGV[0]
resultat = ""

chaine.length.times do |i|
    resultat += chaine[chaine.length - i-1]
end

puts resultat