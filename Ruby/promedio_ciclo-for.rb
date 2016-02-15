
promedios = []

while true
	system("cls")
	puts "Calculador de promedios. Escriba -s para salir."

	for p in (0..promedios.length-1)
		puts "Promedio #{p+1}: #{promedios[p]}"
	end

	print "Ingresa el numero de notas que quieres calcular: "
	numero_notas = gets.chomp

	if numero_notas == "-s"
		break
		system("cls")
	else
		numero_notas = numero_notas.to_i
	end

	sumatoria = 0
	for i in (1..numero_notas)
		print "Ingresa la nota #{i}: "
		nota = gets.chomp
		if nota == "-s"
			break
			system("exit")
		else
			sumatoria += nota.to_f
		end
	end

	promedio = sumatoria / numero_notas
	promedios.push(promedio)

	print "El promedio es: #{promedio}"

	gets()
end