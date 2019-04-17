#!/usr/bin/env ruby
while true
	puts "----"
	entrada = gets.chomp

	n1 = ''
	n2 = ''

	i = 0
	while entrada[i] != ' '
		n1 = n1 + entrada[i]
		i += 1
	end
	i+=1
	while entrada[i].nil? == false
		n2 += entrada[i]
		i+=1
	end
	n1 = n1.to_i
	n2 = n2.to_i

	j = n1
	maior = 0
	while j <= n2
		k = 1
		n = j
		while n > 1
			k+=1
			if n % 2 == 0
				n = n/2
			else
				n = (3*n)+1
			end
		end
		j+=1
		if k > maior
			maior = k
		end
	end
	puts "#{n1} #{n2} #{maior}"
end
