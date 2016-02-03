# Programa para invertir cadenas de texto.
# Autor: Alvaro Carmona

def reversa(texto)
	cadena = texto.to_s
	nuevo_texto = ''
	
	for i in (0..cadena.length - 1)
		nuevo_texto = nuevo_texto + cadena[cadena.length - 1 - i]
	end

	return nuevo_texto
end

def main()
	while true
		system('clear')
		puts 'Programa para invertir textos. Escriba -s para salir.'
		print 'Ingresa cualquier cadena de texto> '

		texto_ingresado = gets.chomp

		if texto_ingresado == '-s'
			break
		else
			system('clear')

			puts texto_ingresado.to_s
			puts reversa(texto_ingresado)

			gets()
		end
	end
end

main()