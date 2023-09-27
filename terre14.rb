#!/usr/bin/env ruby
if ARGV.length < 1
    puts "Veuillez passer au moins un argument"
    exit
end

(ARGV.length).times do |i|
    if ARGV[i] !~ /^\d+$/
        puts "Erreur"
        exit
    end
end

nombres = ARGV.map(&:to_i)

est_triee = true
(nombres.length - 1).times do |i|
    if nombres[i] > nombres[i+1]
        est_triee = false
        break
    end
end

puts est_triee ? 'Triée !' : 'Pas triée !'