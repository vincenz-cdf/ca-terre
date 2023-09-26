#!/usr/bin/env ruby
if ARGV.length != 1
    puts "Veuillez passer exactement un argument"
    exit
end

horaire = ARGV[0].split(':')

if horaire.length != 2 || !horaire[0].match?(/^\d{1,2}$/) || !horaire[1][0..1].match?(/^\d{2}$/) || horaire[0].to_i >= 13 || horaire[1][0..1].to_i >= 60
    puts "Format d'heure invalide. Veuillez utiliser HH:MMAM ou HH:MMPM"
    exit
end

heure = horaire[0].to_i
minute = horaire[1][0..1].to_i
suffix = horaire[1][2..3]

if suffix == "AM"
    puts "#{heure == 12 ? "00" : heure}:#{minute}"
else
    puts "#{heure == 12 ? "12" : heure + 12}:#{minute}"
end