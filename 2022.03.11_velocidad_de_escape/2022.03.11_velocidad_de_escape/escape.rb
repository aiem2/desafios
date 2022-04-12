g = ARGV[0].to_f
r = ARGV[1].to_f

rf = r*1000
valor = 2*g*rf

ve = Math.sqrt(valor)

puts "La velocidad de escape es #{ve} mts/s"