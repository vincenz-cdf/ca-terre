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
    puts number
    exit
end

root_result = 0
for i in 2..number/2
    if i * i == number
        puts i
        break
    end
end
