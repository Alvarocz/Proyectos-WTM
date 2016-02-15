puts "Cual es tu signo sodiacal?"

print "En que dia naciste?: "
dia = gets.chomp.to_i

print "En que mes naciste?: "
mes = gets.chomp.downcase

if dia >= 21 && mes == "enero" || dia <= 19 && mes == "febrero"
	puts "Tu signo es Acuario."
elsif dia >= 20 && mes == "febrero" || dia <= 20 && mes == "marzo"
	puts "Tu signo es Piscis"
elsif dia >= 21 && mes == "marzo" || dia <= 19 && mes == "abril"
	puts "Tu signo es Aries"
elsif dia >= 20 && mes == "abril" || dia <= 20 && mes == "mayo"
	puts "Tu signo es Tauro"
elsif dia >= 21 && mes == "mayo" || dia <= 21 && mes == "junio"
	puts "Tu signo es Geminis"
elsif dia >= 22 && mes == "junio" || dia <= 23 && mes == "julio"
	puts "Tu signo es Cancer"
elsif dia >= 24  && mes == "julio" || dia <= 23 && mes == "agosto"
	puts "Tu signo es Leo"
elsif dia >= 24 && mes == "agosto" && dia <= 22 && mes == "septiembre"
	puts "Tu signo es Virgo"
elsif dia >= 23 && mes == "septiembre" || dia <= 22 && mes == "octubre"
	puts "Tu signo es Libra"
elsif dia >= 23 && mes == "octubre" || dia <= 22 && mes == "noviembre"
	puts "Tu signo es Escorpion"
elsif dia >= 23 && mes == "noviembre" || dia <= 22 && mes == "diciembre"
	puts "Tu signo es Sagitario"
elsif dia >= 23 && mes == "diciembre" || dia <= 20 && mes == "enero"
	puts "Tu signo es Capricornio"
else
	puts "La fecha ingresada no es valida."
end
		
unless dia <= 20 && mes != "febrero" || dia >= 20 && mes != "marzo"
	puts "Tu signo es Piscis"
end

gets()
		
		
		
		
		
		
		
		
		
