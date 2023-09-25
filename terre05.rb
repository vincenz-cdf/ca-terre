#!/usr/bin/env ruby
if ARGV.length == 0 or ARGV.length > 2
    puts "Veuillez passer exactement deux arguments"
    exit
end

if ARGV[0] !~ /\A-?\d+(\.\d+)?\z/ or ARGV[1] !~ /\A-?\d+(\.\d+)?\z/
    puts "Erreur (Une des deux entrées n'est pas un nombre)"
    exit
end

dividende = ARGV[0].to_i
diviseur = ARGV[1].to_i

if diviseur == 0
    puts "Erreur (diviseur = 0)"
    exit
end

if dividende < diviseur
    puts "Erreur (diviseur > dividende)"
    exit
end

puts "Resultat : #{dividende / diviseur}"
puts "Reste : #{dividende % diviseur}"

