puts "Multiplo mas pequenio"

i = 1
count = 0

t = false
while t == false
  i += 1

  for j in 1..10
    multiplo = i * j

    if i % multiplo == 0
      count += 1
    end
    if count >= 10
        puts "#{i} es el número positivo más pequeño que es divisible por todos los números del 1 al 10"
        t = true
    end
  end
end