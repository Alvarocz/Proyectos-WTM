f_primos = []

system("cls")
print "Ingrese un numero para calcular sus factores primos: "
numero = gets.chomp.to_i

x = 2

counter = 0
while numero != 1
	if numero % x == 0
		counter += 1
		f_primos.push(x)
		puts "Factor primo #{counter}: #{x}"
		numero /= x
	else
		x += 1
	end
end

puts "\nEl mayor factor primo de #{numero} es: #{f_primos.max}"