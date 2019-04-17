#!/usr/bin/env ruby

tempoTotal = 0
tempoMedio = 0
somaDosTempos = 0

for i in 1..5
	puts "tempo da porva #{i}"
	entrada = gets.chomp
	entrada = entrada.to_i
	somaDosTempos += entrada
end

tempoMedio = somaDosTempos/5

puts "\nTempo Medio\n#{tempoMedio} seg\n"

tempoTotal = tempoMedio * 100

hora = tempoTotal/3600
minuto = (tempoTotal % 3600) / 60
segundo = (tempoTotal % 3600) % 60

puts "Tempo Total(horas, minutos e segundo)\n#{hora}:#{minuto}:#{segundo}"