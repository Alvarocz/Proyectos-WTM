vector = []

system("cls")

print "Ingrese la cantidad de numeros: "

num_elementos = gets.chomp.to_i

cant_multipl3 = 0

for n in 0..num_elementos - 1
	print "\nIngrese el numero #{n + 1}: "

	numero = gets.chomp.to_i

	vector.push(numero)

	if vector[n]%3 == 0
		cant_multipl3 += 1
	end
end

puts "\nVector: #{vector}"
puts "La cantidad de numeros multiplos de 3 es: #{cant_multipl3}"

