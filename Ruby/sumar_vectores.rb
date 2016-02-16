vectora = []
vectorb = []
vectorc = []

system("cls")

print "Ingrese la cantidad de elementos del Vector 1: "

num_elementos_v1 = gets.chomp.to_i

for n in 0..num_elementos_v1 - 1
	print "\nIngrese el elemento #{n + 1}: "

	elemento = gets.chomp.to_i

	vectora.push(elemento)
end

system("cls")

print "Vector 1: #{vectora}\n\n"

print "Ingrese la cantidad de elementos del Vector 2: "

num_elementos_v2 = gets.chomp.to_i

for o in 0..num_elementos_v2 - 1
	print "\nIngrese el elemento #{o + 1}: "

	elemento = gets.chomp.to_i

	vectorb.push(elemento)
end

for p in 0..vectora.length + vectorb.length
	if p < vectora.length && p < vectorb.length
		vectorc.push(vectora[p] + vectorb[p])
	end

	if p >= vectora.length && p < vectorb.length
		vectorc.push(vectorb[p])
	elsif p >= vectorb.length && p < vectora.length
		vectorc.push(vectora[p])
	end
end
			

system("cls")
print "Vector a: #{vectora}\n\n"
print "Vector b: #{vectorb}\n\n"
print "Vector c: #{vectorc}"




