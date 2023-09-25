#!/usr/bin/env ruby
if ARGV[0] == "" or ARGV[0] == nil or ARGV[0] !~ /^\d+$/
    puts "Aucun nombre n'a été reconnu"
else
    if ARGV[0].to_i % 2 == 0
        puts "Est pair"
    else
        puts "Est impair"
    end
end