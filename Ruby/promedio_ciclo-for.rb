
promedios = []

while true
	system("cls")
	puts "Calculador de promedios. Escriba -s para salir.\n"

	if promedios != []
		for p in (0..promedios.length-1)
			puts "Promedio #{p+1}: #{promedios[p]}"
		end
	end

	print "\nIngresa la cantidad de numeros que quieres calcular: "
	cant_numeros = gets.chomp

	if cant_numeros == "-s"
		break
		system("cls")
	else
		cant_numeros = cant_numeros.to_i
	end

	sumatoria = 0
	numeros = []
	for i in (1..cant_numeros)
		print "Ingresa el numero #{i}: "
		numero = gets.chomp

		if numero == "-s"
			break
			system("exit")
		else
			sumatoria += numero.to_f
			numeros.push(numero)
		end
	end

	promedio = sumatoria / cant_numeros
	promedios.push(promedio)

	puts "\nEl promedio es: #{promedio}"
	puts "El numero mayor es: #{numeros.max}"
	puts "El numero menor es: #{numeros.min}"

	gets()
end