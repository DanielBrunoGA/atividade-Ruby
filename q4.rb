#!/usr/bin/env ruby

puts "total de dias"
dias = gets.chomp
dias = dias.to_i

puts "quilometros"
km = gets.chomp
km = km.to_i

preco = 90*dias

if km > 100
	kmExtra = km%100
	preco += (12*kmExtra)
end

puts "--------\n#{preco}"
