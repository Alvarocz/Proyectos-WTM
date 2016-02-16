# Calculadora
# Autor: Alvaro Carmona
# Creado el 15 de Febrero del 2016

def sumar(a, b)
	resultado = a + b

	return resultado
end

def restar(a, b)
	resultado = a - b

	return resultado
end

def multiplicar(a, b)
	resultado = a * b

	return resultado
end

def dividir(a, b)
	resultado = a / b

	return resultado
end

system("cls")

puts "Calculadora\n"

print "Ingrese un numero: "
a = gets.chomp.to_f

print 
print "Ingrese otro numero: "
b = gets.chomp.to_f

puts " "
puts " +"
puts " -"
puts " *"
puts " /"
print "Que operacion quiere realizar?."
opcion = gets.chomp

case opcion
	when "+"
		print " #{a} + #{b} = #{sumar(a, b)}"

	when "-"
		print " #{a} - #{b} = #{restar(a, b)}"

	when "*"
		print " #{a} * #{b} = #{multiplicar(a, b)}"

	when "/"
		print " #{a} / #{b} = #{dividir(a, b)}"

end

gets()
