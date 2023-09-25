#!/usr/bin/env ruby

if ARGV[1] != nil or ARGV[0] == nil or ARGV[0] =~ /\A-?\d+(\.\d+)?\z/
    puts "erreur"
    exit
end

chaine = ARGV[0]
count = 0

chaine.each_char {
    count += 1
}

puts count