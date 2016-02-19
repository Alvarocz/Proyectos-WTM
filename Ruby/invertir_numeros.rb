# Programa para invertir numeros
# Autor: Alvaro Carmona
# Creado el viernes 19 de Febrero del 2016

numero_invertido = ""
while true
	system("clear")

	puts "Invierte cualquier numero!"

	print "\nIngresa un numero de dos cifras o mas: "

	numero = gets.chomp

	if numero.length > 1
		for i in 0...numero.length
			numero_invertido += numero[numero.length - 1 - i]
		end
		break
	end
end

if numero_invertido[0] == "0"
	numero_invertido.slice!(0)
end

system("clear")

puts "Invierte cualquier numero!"

puts "\nNumero original: #{numero}"

puts "\nEl numero invertido es: #{numero_invertido}"

