#!/usr/bin/env ruby

puts "quantidade de alunos"

qtdDeAlunos = gets.chomp
qtdDeAlunos = qtdDeAlunos.to_i

alunos = []
i = 0
while i <= (3*qtdDeAlunos)-1
	puts "matricula:"
	mat = gets.chomp
	mat = mat.to_i
	alunos[i] = mat
	puts "Nome:"
	alunos[i+1] = gets.chomp
	puts "Nota:"
	notaAux = gets.chomp
	notaAux = notaAux.to_f
	alunos[i+2] = notaAux
	i = i+3
	puts "--------"
end

madeia = 0
somaNotas = 0
i = 2
while i <= (3*qtdDeAlunos-1)
	somaNotas += alunos[i]
	i = i+3
end

media = somaNotas/qtdDeAlunos

mat = 0
nome = 1
nota = 2
i = 0
while i <= (3*qtdDeAlunos-1)
	maior = alunos[nota]
	j = nota+3
	while j <= (3*qtdDeAlunos-1)
		if alunos[j] > maior
			maior = alunos[j]
			nota = j
			nome = j-1
			mat = j-2
		end
		j = j+3
	end
	matAux = alunos[i]
	nomeAux = alunos[i+1]
	notaAux = alunos[i+2]

	alunos[i] = alunos[mat]
	alunos[i+1] = alunos[nome]
	alunos[i+2] = alunos[nota]

	alunos[mat] = matAux
	alunos[nome] = nomeAux
	alunos[nota] = notaAux
	i = i+3
end

i=2
while i <= (3*qtdDeAlunos-1)
	if alunos[i] >= media
		puts "Matricula: #{alunos[i-2]} Nome: #{alunos[i-1]} Nota: #{alunos[i]}"
	end
	i = i+3
end
puts "media = #{media}"


