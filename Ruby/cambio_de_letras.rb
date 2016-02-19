system("clear")

alfabeto = ("a".."z").to_a

puts "Encripta cualquier texto!"

print "\nPorfavor ingrese una palabra o frase: "

texto = gets.chomp

texto.downcase!

nuevo_texto = ""
for t in 0...texto.length
	for l in 0...alfabeto.length
		if alfabeto[l] == texto[t] && texto[t] != "z"
			if alfabeto[l + 1] == "a" || alfabeto[l + 1] == "e" || alfabeto[l + 1] == "i" || alfabeto[l + 1] == "o" || alfabeto[l + 1] == "u"
				nuevo_texto += alfabeto[l + 1].upcase
			else
				nuevo_texto += alfabeto[l + 1]
			end
		elsif alfabeto[l] == texto[t] && texto[t] == "z"
			nuevo_texto += "A"
		end
	end
end
system("clear")

puts "Texto original: #{texto}"

puts "\nTexto encriptado!: #{nuevo_texto}"
				