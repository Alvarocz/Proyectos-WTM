class LineaAutobuses
  def initialize(nombre, gerente)
    @nombre = nombre
    @gerente = gerente
    @estadisticas = []
  end
  def nombre
    @nombre
  end
  def agregarEstadisticas()
  end
end

class Autobus
  ganancia = 0
  @cantidad_pasajeros = 0
  @capacidad_pasajeros = 60

  def initialize(destino, numero)
    @destino = destino
    @numero = numero
  end

  def agregarPasaje(pasaje)
    ganancia += pasaje
  end
end

class Boleto
  def initialize(nombre, sexo, edad, destino)
    @nombre = nombre
    @sexo = sexo
    @edad = edad
    @destino = destino

    if destino == "Bogota" && edad > 5 && edad < 60
      @precio = 110000
    elsif destino == "Medellin" && edad > 5 && edad < 60
      @precio = 90000
    elsif destino ==  "Bogota" && edad <= 5 || edad >= 60
      @precio = 55000
    elsif destino == "Medellin" && edad <=5 || edad >= 60
      @precio = 45000
    end
  end

  def mostrar
    puts "=================================="
    puts "Nombre: #{@nombre}"
    puts "=================================="
    puts "Sexo: #{@sexo}"
    puts "=================================="
    puts "Edad: #{@edad}"
    puts "=================================="
    puts "Destino: #{@destino}"
    puts "=================================="
    puts "Precio: #{@precio}"
    puts "=================================="
  end

  def sexo
    @sexo
  end

  def edad
    @edad
  end

  def precio
    @precio
  end

  def destino
    @destino
  end
end

class Viaje
  @pasajeros = []
  def initialize(destino, autobus, hora)
    @destino = destino
    @autobus = autobus
    @hora = hora
  end

  def destino
    @destino
  end

  def agregarPasajeros(boleto)
    @pasajeros.push(boleto)
  end
end

# Lado del usuario -----------------------------------------------

linea = LineaAutobuses.new("El cardenalito", "Pablo")

boletos = []
viajes = []
autobuses = []

num_hombres = 0
num_mujeres = 0
num_autobuses = 0
num_buses_copados = 0
num_viajes_bogota = 0

sexos = ["Masculino", "Femenino"]
destinos = ["Bogota", "Medellin"]

contador_pasajeros = 1

for np in 1..170                                          # Simular que se registran x numero de personas con destinos al azar y sexos al azar
  nombre = "persona #{np}" 
  sexo = sexos[Random.rand(0..1)]
  edad = Random.rand(4..70)
  destino = destinos[Random.rand(0..1)]

  nuevo_boleto = Boleto.new(nombre, sexo, edad, destino)   # El objeto boleto hace el papel de un pasajero
  nuevo_autobus = Autobus.new(destino, "0#{np}")

  if nuevo_boleto.sexo == "Masculino"
    num_hombres += 1
  elsif nuevo_boleto.sexo == "Femenino"
    num_mujeres += 1
  end

  nuevo_autobus.agregarPasaje(nuevo_boleto.precio)
  nuevo_autobus.cantidad_pasajeros += 1

  if contador_pasajeros == nuevo_autobus.capacidad_pasajeros
    nuevo_viaje = Viaje.new(destino, nuevo_autobus, "cualquier hora")

    nuevo_viaje.agregarPasajero(nuevo_boleto)

    num_autobuses += 1
    contador_pasajeros = 1

    autobuses.push(nuevo_autobus)
    num_buses_copados += 1
  end

  boletos.push(nuevo_boleto)
  viajes.push(nuevo_viaje)
end

viajes.each do |viaje|
  viaje.pasajeros.each do |pasajero|
    if pasajero.destino == "Bogota"
      num_viajes_bogota += 1
    end
  end
end

puts "\nBuses copados: #{buses_copados}"

puts "\nLa cantidad de pasajeros cuyo destino fue Bogota: #{num_viajes_bogota}"

if num_mujeres > num_hombres
  puts "\nEl sexo que mas viajo fueron hombres"
else
  puts "\nEl sexo que mas viajo fueron mujeres"
end

=begin
POO1
El gerente de la línea de autobuses “El Cardenalito”, desea un sistema que permita llevar el control de los autobuses que salen diariamente, 
por tanto es importante para la línea saber el Monto de pesos obtenido por el viaje realizado y el total de pasajeros que pagaron la mitad del costo del pasaje.
Del autobús se conoce el destino (1. Medellin, 2. Bogotá) y la cantidad de pasajeros que transportó. Cabe destacar que cada autobús posee un número. 
Se sabe que todos los autobuses de esa línea tienen una capacidad máxima de 60 pasajeros y además el costo del pasaje a Medellin es 90000 pesos, y a Bogotá es 110000. 
Por otra parte, la línea establece que las personas de la tercera edad y los niños menores de 5 años deberán cancelar sólo la mitad del pasaje. 
Es importante resaltar que cada vez que llega un pasajero a comprar un boleto se le solicita indique su nombre, sexo y edad. El gerente necesita tener 
disponibles ciertas estadísticas, que le permita tomar decisiones eficaces, dichas estadísticas se refiere a cantidad de autobuses que utilizaron 
la capacidad máxima, total de pasajeros cuyo destino fue Bogota y entre las personas de sexo femenino y masculino quienes viajan más.
NOTA: Se considera que una persona se encuentra en la tercera edad si su edad es por lo menos 60 años
Add Comment Collapse
=end

=begin
while true
  system("cls")

  puts "Programa de registro de la linea #{linea.nombre}"

  print "Nombre: "
  nombre = gets.chomp

  print "Sexo: "
  sexo = gets.chomp

  print "Edad: "
  edad = gets.chomp.to_i

  print "Destino: "
  destino = gets.chomp

  nuevo_boleto = Boleto.new(nombre, sexo, edad, destino) 
  nuevo_viaje 

  boletos.push(nuevo_boleto)
  contador_buses += 1
end
=end