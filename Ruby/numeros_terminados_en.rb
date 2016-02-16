numeros = []
numeros_terminados_en = []

random = Random.new
for n in 0..15                                             # Estoy creando el vector de tamanio n con ks aleatorios
	numeros.push(random.rand(1..1000))
end

system("cls")

print "Ingresa un numero por favor: "

k = gets.chomp.to_i

print "Numeros: #{numeros}\n\n"                                 # Mostramos el vector

for i in 0...numeros.length                                # Ciclo for para detectar los numeros terminados en k
	num_vector = numeros[i].to_s
	num_usuario = k.to_s
	if num_usuario == num_vector[num_vector.length - 1]
		numeros_terminados_en.push(num_vector.to_i)
	end
end

print "Los numeros terminados en #{k} son: #{numeros_terminados_en}"