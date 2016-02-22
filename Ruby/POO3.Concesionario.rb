class Vehiculo
	def initialize(codigo, marca, tipo, modelo, patente, kilometraje)
		@codigo = codigo
		@marca = marca
		@tipo = tipo
		@modelo = modelo
		@patente = patente
		@kilometraje = kilometraje
	end
end

class Venta
	def initialize(monto, vehiculo, apellido_comprador, nombre_comprador, ci_comprador)
		@momto = monto
		@vehiculo = vehiculo.codigo
		@apellido_comprador = apellido_comprador
		@nombre_comprador = nombre_comprador
		@ci_comprador = ci_comprador
	end
end

class Registro
	def initialize(venta, hora, fecha)
		@venta = venta
		@hora = hora
		@fecha = fecha
	end
end

registros = []

camioneta = Vehiculo.new("101A", "chevrolet", "camioneta", "2015", "dmax", "0 km")
particular = Vehiculo.new("120B", "chevrolet", "auto", "2016", "Sonic ls", "0 km")
bus = Vehiculo.new("150C", "chevrolet", "autobus", "2010", "NQR", "0 km")

venta1 = Venta.new(79670000, camioneta, "Cardona Molina", "Juan", "")

venta2 = Venta.new(34525000, particular, "Perez Patiño", "Marta", "")

venta3 = Venta.new(139510000, bus, "Castillo Hernandez", "Antonio", "")

registro1 = Registro.new(venta1, "10:30 a.m", "22/02/16")
registro2 = Registro.new(venta2, "10:45 a.m", "23/02/16")
registro3 = Registro.new(venta3, "12:15 p.m", "28/02/16")

registros.push(registro1)
registros.push(registro2)
registros.push(registro3)