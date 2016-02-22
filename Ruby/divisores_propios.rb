divisores = []
sumatoria = 0

system("clear")
print "Ingrese un numero para calcular sus divisores propios: "
numero = gets.chomp.to_i

for n in 1..numero/2
	if numero%n == 0
		divisores.push(n)
	end
end

puts "\nDivisores de #{numero}: "
divisores.each do |divisor|
	if divisor < numero / 2
		print "#{divisor} + "
	elsif divisor == numero / 2
		print "#{divisor} = "
	end
end
sumatoria = divisores.reduce(:+)

print "#{sumatoria}"

if sumatoria > numero
	puts "\nEl #{numero} es un numero abundante."
elsif sumatoria == numero
	puts "\nEl #{numero} es un numero perfecto"
else
	puts "\nEl #{numero} es un numero defectivo"
end
