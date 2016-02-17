sumatoria = 0

for num in 1...1000
	if num % 3 == 0
		print "#{num}, "
		sumatoria += num
	elsif num % 5 == 0
		print "#{num}, "
		sumatoria += num
	end
end

puts "\nSuma de los multiplos: #{sumatoria}"
			