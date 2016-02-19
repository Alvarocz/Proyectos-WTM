# Programa para invertir numeros
# Autor: Alvaro Carmona
# Creado el viernes 19 de Febrero del 2016

numero_invertido = []
numero_cifras = 0
while true
	system("clear")

	puts "Invierte cualquier numero!"

	print "\nIngresa un numero de dos cifras o mas: "

	numero = gets.chomp

	if numero.length > 1
		numero_cifras = numero.length
		numero = numero.to_i
		break
	end
end
operacion = numero
while operacion > 0
	cifra = operacion % 10
	numero_invertido.push(cifra)
	operacion = operacion / 10
	operacion = operacion.to_i
end

numero_invertido = Integer(numero_invertido.join)

puts "Invierte cualquier numero!"

puts "\nNumero original: #{numero}"

puts "\nEl numero invertido es: #{numero_invertido}"

