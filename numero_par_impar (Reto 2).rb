def par_o_impar(entero)
	if entero % 2 == 0
		return true
	else
		return false
	end
end

def main()
	while true
		system('cls')
		system('clear')
		puts 'Quieres saber si es par o impar?'
		puts "Escriba -s para salir. \n"
		print 'Igresa un numero entero: '

		numero_ingresado = gets.chomp
		if numero_ingresado == '-s'
			break
		else
			numero_ingresado = numero_ingresado.to_i
		end

		if par_o_inpar(numero_ingresado)
			system('clear')
			system('cls')
			puts "El #{numero_ingresado} es par!"
			gets()
		else
			system('clear')
			system('cls')
			puts "El #{numero_ingresado} es impar!"
			gets()
		end
	end
end

main()
