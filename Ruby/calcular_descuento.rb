def calcular_descuento(precio, porcentaje_descuento)
	descuento = precio * (porcentaje_descuento.to_f / 100)

	return descuento.to_i
end

system("cls")

puts "Calcula tu descuento."
puts " "

print "Ingresa el precio: "
precio = gets.chomp.to_i

print "Ingresa tu numero de cedula: "
cedula = gets.chomp
puts " "

ultimo_numero = cedula[cedula.length- 1]

valor_final = 0
descuento = 0

if ultimo_numero == "1" || ultimo_numero == "2" || ultimo_numero == "3"
	descuento = 15
	valor_final = calcular_descuento(precio, descuento)

	puts "Tu descuento es del #{descuento}%."
	puts "Valor a pagar: #{valor_final}"
elsif ultimo_numero == "4" || ultimo_numero == "5" || ultimo_numero == "6"
	descuento = 20
	valor_final = calcular_descuento(precio, descuento)
	
	puts "Tu descuento es del #{descuento}%."
	puts "Valor a pagar: #{valor_final}"
elsif ultimo_numero == "7" || ultimo_numero == "8" || ultimo_numero == "9" || ultimo_numero == "0"
	descuento = 25
	valor_final = calcular_descuento(precio, descuento)
	
	puts "Tu descuento es del #{descuento}%."
	puts "Valor a pagar: #{valor_final}"
end

gets()		