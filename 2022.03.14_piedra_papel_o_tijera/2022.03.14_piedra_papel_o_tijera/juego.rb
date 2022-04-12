opcion = ARGV[0].to_s

if opcion == 'piedra' || opcion == 'Piedra' || opcion == 'PIEDRA'
    jugador = 0
elsif opcion == 'papel' || opcion == 'Papel' || opcion == 'PAPEL'
    jugador = 1
elsif
    opcion == 'tijera' || opcion == 'Tijera' || opcion == 'TIJERA'
    jugador = 2
else
    jugador = 3
end

cpu = rand(0..2)

if cpu == 0
    comp = 'Piedra'
elsif
    cpu == 1
    comp = 'Papel'
else
    comp = 'Tijera'
end

if jugador == 3
    puts "Argumento inválido: debe ser piedra, papel o tijera"
elsif jugador == 0 && cpu == 0 
    puts "El computador jugó #{comp} \n¡Empataste!"
elsif jugador == 1 && cpu ==1
    puts "El computador jugó #{comp} \n¡Empataste!"
elsif jugador == 2 && cpu == 2
    puts "El computador jugó #{comp} \n¡Empataste!"    
elsif jugador == 0 && cpu == 1 
    puts "El computador jugó #{comp} \n¡Perdiste!"
elsif jugador == 1 && cpu == 2
    puts "El computador jugó #{comp} \n¡Perdiste!"
elsif jugador == 2 && cpu == 0
    puts "El computador jugó #{comp} \n¡Perdiste!"
elsif jugador == 1 && cpu == 0 
    puts "El computador jugó #{comp} \n¡Ganaste!"
elsif jugador == 2 && cpu == 1 
    puts "El computador jugó #{comp} \n¡Ganaste!"
else jugador == 0 && cpu == 2
    puts "El computador jugó #{comp} \n¡Ganaste!"
end

