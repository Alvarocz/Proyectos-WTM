system("cls")

print "Crea una piramide de caracteres.\n\n"

print "Ingresa el numero de filas de la piramide: "

num_filas = gets.chomp.to_i

print "/nIngresa el caracter: "

caracter = gets.chomp

for i in 1..num_filas
	print " " * (num_filas - i)
	print "#{caracter}" * (i - 1 * 2)
	print "\n"
end
