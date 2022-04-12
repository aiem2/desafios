def menu_juego
    puts " "
    puts "Elige tu opción"
    puts "---------------"
    puts "1: Piedra"
    puts "2: Papel"
    puts "3: Tijera"
    puts "4: Salir" 
end

#DEFINICIÓN JUGADOR 1
def jug_1 
    puts "Jugador 1"
    print menu_juego
    j1 = gets.chomp
    
    if j1.downcase == "piedra" || j1 == "1"
        j1f = 1
        elsif j1.downcase == "papel" || j1 == "2"
            j1f = 2
        elsif j1.downcase == "tijera" || j1 == "3"
            j1f = 3
        elsif j1.downcase == "salir" || j1 == "4"
            j1f = 4
        else
            j1f = 5
            while j1f == 5 do
                puts "\n"
                puts "Opción inválida"
                puts "\n"
                print menu_juego
                j1 = gets.chomp
                
                if j1.downcase == "piedra" || j1 == "1"
                    j1f = 1
                    elsif j1.downcase == "papel" || j1 == "2"
                        j1f = 2
                    elsif j1.downcase == "tijera" || j1 == "3"
                        j1f = 3
                    elsif j1.downcase == "salir" || j1 == "4"
                        j1f = 4
                end
            end
    end
    return j1f
end

j1f = jug_1()


#MENSAJE PARA JUGADOR 1
if j1f == 1
    puts " "
    puts "Jugaste Piedra"
    puts "Ahora es el turno del Jugador 2"
    elsif j1f == 2
        puts " "
        puts "Jugaste Papel"
        puts "Ahora es el turno del Jugador 2"
    elsif j1f == 3
        puts " "
        puts "Jugaste Tijera"
        puts "Ahora es el turno del Jugador 2"
    else j1f == 4
        puts" "
        puts "Decidiste no seguir jugando"
end

puts " "

#EN CASO DE QUE SIGA EL JUEGO PARA EL JUGADOR 2
def jug_2 
    puts "Jugador 2"
    print menu_juego
    j2 = gets.chomp
    
    if j2.downcase == "piedra" || j2 == "1"
        j2f = 1
        elsif j2.downcase == "papel" || j2 == "2"
            j2f = 2
        elsif j2.downcase == "tijera" || j2 == "3"
            j2f = 3
        elsif j2.downcase == "salir" || j2 == "4"
            j2f = 4
        else
            j2f = 5
            while j2f == 5 do
                puts "\n"
                puts "Opción inválida"
                puts "\n"
                print menu_juego
                j2 = gets.chomp
                
                if j2.downcase == "piedra" || j2 == "1"
                    j2f = 1
                    elsif j2.downcase == "papel" || j2 == "2"
                        j2f = 2
                    elsif j2.downcase == "tijera" || j2 == "3"
                        j2f = 3
                    elsif j2.downcase == "salir" || j2 == "4"
                        j2f = 4
                end
            end
    end
    return j2f
end

j2f = jug_2()
print j2f

# MENSAJE JUGADOR 2
if j2f == 1
    puts " "
    puts "Jugaste Piedra"
    puts "Ahora veremos quien ganó"
    elsif j2f == 2
        puts " "
        puts "Jugaste Papel"
        puts "Ahora veremos quien ganó"
    elsif j2f == 3
        puts " "
        puts "Jugaste Tijera"
        puts "Ahora veremos quien ganó"
    else j2f == 4
        puts" "
        puts "Decidiste no seguir jugando"
end

puts " "
puts " "

#MENSAJE DEL GANADOR
if j1f == 4 || j2f == 4
    puts "El juego no se realizó porque un jugador decidió salir"
    elsif j1f == 1 && j2f == 1 
        puts "Ambos escogieron Piedra \n¡Empataron!"
    elsif j1f == 2 && j2f == 2
        puts "Ambos escogieron Papel \n¡Empataron!"
    elsif j1f == 3 && j2f == 3
        puts "Ambos escogieron Tijera \n¡Empataron!"    
    elsif j1f == 1 && j2f == 2 
        puts "Ganó el Jugador 2 que escogió Papel"
    elsif j1f == 2 && j2f == 3
        puts "Ganó el Jugador 2 que escogió Tijera"
    elsif j1f == 3 && j2f == 1
        puts "Ganó el Jugador 2 que escogió Piedra"
    elsif j1f == 2 && j2f == 1
        puts "Ganó el Jugador 1 que escogió Papel"
    elsif j1f == 3 && j2f == 2 
        puts "Ganó el Jugador 1 que escogió Tijera"
    else j1f == 1 && j2f == 3
        puts "Ganó el Jugador 1 que escogió Piedra"
end

# MENSAJE DE CIERRE
  puts " "
  puts "Gracias por jugar"

# end