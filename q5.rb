#!/usr/bin/env ruby

entrada1 = gets.chomp
entrada2 = gets.chomp

vtr1 = []
vtr2 = []

vtr1 = entrada1.chars
vtr2 = entrada2.chars

tam1 = vtr1.length
tam2 = vtr2.length

cont = 0
i = 0
while i < tam1
	j = 0
	if vtr1[i] == ' ' || vtr1[i] == '.' || vtr1[i] == ',' || vtr1[i] == '!' || vtr1[i] == '?'
		cont += 1
	else
		while j < tam2
			if vtr1[i] == vtr2[j]
				cont += 1
				vtr2[j] = '0'
			end
			j += 1
		end	
	end
	i += 1
end

if cont == tam1
	puts 'True'
else
	puts 'False'
end