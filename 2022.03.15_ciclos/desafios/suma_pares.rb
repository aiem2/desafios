n = ARGV[0].to_i
suma = 0

(n*2).times do |i|

    if i%2==0
        suma += i+2
        else
        suma += 0
    end

end

print suma
