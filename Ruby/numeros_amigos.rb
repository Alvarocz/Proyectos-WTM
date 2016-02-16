sumatoria1 = 0
sumatoria2 = 0

for num in 1..70000
	i = 1

	while i < num / 2
		if num%i == 0
			sumatoria1 += i
		end
		i += 1
	end

	j = 1

	while j < sumatoria1 / 2
		if sumatoria1%j == 0
			sumatoria2 += j
		end
		j += 1
	end

	if sumatoria2 == num
		if num == sumatoria1
			puts "#{num} es un numero perfecto"
		else
			puts "#{num} y #{sumatoria1} son numeros amigos"
		end
	end

	sumatoria1 = 0
	sumatoria2 = 0
end