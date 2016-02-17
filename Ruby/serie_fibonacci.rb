system("cls")

puts "Serie Fibonacci en Ruby!"

print "\nIngrese el rango: "

n = gets.chomp.to_i

fn = [1, 2]

for j in 2..n
	fn[j] = fn[j - 1] + fn[j - 2]
end

puts "#{fn}"