system("cls")

print "Ingresa un numero: "

n = gets.chomp.to_i

puts " "
total = 0

for i in 1..n
	if i < n
		print "#{i}^2 + "
	else
		puts "#{i}^2\n\n"
	end
	total += i ** 2
end

puts "Total: #{total}"