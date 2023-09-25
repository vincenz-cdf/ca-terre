#!/usr/bin/env ruby
alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n','o','p','q','r','s','t','u','v','w','x','y','z']

begin_sequence = false

if ARGV[0] == "" or ARGV[0] == nil
    puts "Aucune lettre n'a été reconnu"
else
    alphabet.each do |letter|
        if letter == ARGV[0]
            puts letter + "\n"
            begin_sequence = true
        elsif begin_sequence
            puts letter + "\n"
        end
    end
end