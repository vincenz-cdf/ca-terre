#!/usr/bin/env ruby
if ARGV.length != 1
    puts "Veuillez passer exactement un argument"
    exit
end

horaire = ARGV[0].split(':')

if horaire.length != 2 || !horaire[0].match?(/^\d{1,2}$/) || !horaire[1].match?(/^\d{2}$/) || horaire[0].to_i >= 24 || horaire[1].to_i >= 60
    puts "Format d'heure invalide. Veuillez utiliser HH:MM"
    exit
end

heure = horaire[0].to_i
minute = horaire[1].to_i

suffix = heure > 11 ? "PM" : "AM"

if heure - 12 == 0 or heure == 0
    puts "12:#{minute}#{suffix}"
elsif heure - 12 < 0
    puts "#{heure}:#{minute}#{suffix}"
else
    puts "#{(heure-12).abs}:#{minute}#{suffix}"
end