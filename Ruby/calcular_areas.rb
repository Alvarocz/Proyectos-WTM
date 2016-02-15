# Programa calculador de areas.
# Autor: Alvaro Carmona
# Creado el 15 de Febrero del 2016

pi = 3.1416

def area_rectangulo(base, altura)
	area = base * altura

	return area
end

def area_cuadrado(lado)
	area = lado * lado

	return area
end

def area_circulo(radio)
	area = pi * radio ** 2

	return area
end

def area_triangulo(base, altura)
	area = (base * altura) / 2

	return area
end

system("cls")

puts "Programa calculador de areas.\n"

puts " Cuadrado: 1\n Rectangulo: 2\n Triangulo: 3\n Circulo: 4\n Salir: 5"
print "A que figura le quieres calcular el area?\n Ingresa el numero de la figura: "

opcion = gets.chomp.to_i

case opcion
when 1
	print "Ingresa el lado del cuadrado (cm): "
	lado_c = gets.chomp.to_f

	puts "El area del cuadrado es #{area_cuadrado(lado_c)} cm2."

when 2
	print "Ingresa la base del rectangulo (cm): "
	base_r = gets.chomp.to_f
	print "Ingresa la altura del rectangulo (cm): "
	altura_r = gets.chomp.to_f

	puts "El area del rectangulo es #{area_rectangulo(base_r, altura_r)} cm2."

when 3
	print "Ingresa la base del triangulo (cm): "
	base_t = gets.chomp.to_f
	print "Ingresa la altura del triangulo (cm): "
	altura_t = gets.chomp.to_f

	puts "El area del triangulo es #{area_triangulo(base_t, altura_t)} cm2."

when 4
	print "Ingresa el radio del circulo (cm): "
	radio = gets.chomp.to_f

	puts "El area del circulo es #{area_circulo(radio)} cm2."

when 5
	puts "Programa finalizado"

end

gets()