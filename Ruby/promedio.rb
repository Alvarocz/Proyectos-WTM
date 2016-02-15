syste("cls")

puts 'Calcular el promedio de cuatro notas'


print 'Ingresa la primera nota: '
nota1 = gets.chomp

print 'Ingresa la segunda nota: '
nota2 = gets.chomp

print 'Ingresa la tercera nota: '
nota3 = gets.chomp

print 'Ingresa la cuarta nota: '
nota4 = gets.chomp

promedio = (nota1.to_f + nota2.to_f + nota3.to_f + nota4.to_f) / 4.0

print "El promedio de | #{nota1} | #{nota2} | #{nota3} | #{nota4} | es #{promedio}" 

