#!/usr/bin/env ruby
if ARGV.length != 1
    puts "Veuillez passer exactement un argument"
    exit
end

number = ARGV[0].to_i
if ARGV[0] !~ /^\d+$/ or number < 0
    puts 'Veuillez fournir un entier positif.'
    exit
end

if number < 2
    puts "Non, #{number} n’est pas un nombre premier."
    exit
end

for i in 2..number/2
    if number % i == 0
        puts "Non, #{number} n’est pas un nombre premier."
        exit
    end
end
puts "Oui, #{number} est un nombre premier."