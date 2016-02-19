system("clear")

print "Porfavor ingrese una frase: "

frase = gets.chomp.to_s

palabras = frase.split(" ")

tamanios = []

for i in 0..palabras.length - 1
	tamanios.push(palabras[i].length)
end

index = tamanios.each_with_index.max[1]

puts "\nLa palabra mas larga de la frase es: #{palabras[index]}"

