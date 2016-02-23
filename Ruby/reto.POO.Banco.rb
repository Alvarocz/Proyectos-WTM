class Cuenta
	@@saldo = 0
	@@interes_cuenta = 0
	@@tipo = "CC"
	@@comision = 600
	@@estado = "activa"
	def initialize(cliente, tipo)
		@cliente = cliente
		@@tipo = tipo

		if @@tipo == "CC"
			@@interes_cuenta = 0.1
		elsif @@tipo == "CV"
			@@interes_cuenta = 0.2
		elsif @@tipo == "FI"
			@@interes_cuenta = 0.34
		end
	end
	
	def ingresar(cantidad)
		if @@estado == "activa"
			@@saldo = @@saldo + cantidad
		elsif @@estado == "bloqueada"
			puts "Su cuenta esta bloqueada."
		end
	end

	def retirar(cantidad)
		if @@estado == "activa"
			if @@tipo == "CC"
				if cantidad <= @@saldo
					@@saldo = @@saldo - cantidad
				else
					puts "No tiene suficiente saldo para retirar esa cantidad de dinero."
				end
			elsif @@tipo == "CV"
				puts "No se puede retirar dinero de esta cuenta."
			elsif @@tipo == "FI"
				if cantidad <= 500000
					@@saldo = @@saldo - cantidad
				else
					puts "No se puede retirar una cantidad mayor a 500000.\nCuenta bloqueada."
					@@estado = "bloqueada"
				end
			end
		else
			puts "La cuenta esta bloqueada."
		end
	end

	def consultar
		if @@estado == "activa"
			puts "Cuenta #{@@tipo}: #{@cliente.nombre} #{@cliente.apellidos}"
			puts "Su saldo es: #{@@saldo}"
		elsif @@estado == "bloqueada"
			puts "La cuenta esta bloqueada."
		end
	end

	def revision
		until @@estado == "bloqueada"
			@@saldo = @@saldo + @@interes_cuenta - @@comision
		end
	end
end

class Cliente
	def initialize(dni, nombre, apellidos, direccion, telefono)
		@dni = dni
		@nombre = nombre
		@apellidos = apellidos
		@direccion = direccion
		@telefono = telefono
	end
end


