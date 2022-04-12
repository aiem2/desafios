#DEFINICIÓN MENU
def menu
    puts "Elige una opción"
    puts "1. Cuadrado"
    puts "2. Triángulo"
    puts "3. Pirámide"
    puts "4. Salir"
end

#DEFINIR PARTICIPA
def participa 
    print menu
    op = gets.chomp

    if op.downcase == "cuadrado" || op == "1"
        fig = 1
        elsif op.downcase == "triángulo" ||op.downcase == "triangulo" || op == "2"
            fig = 2
        elsif op.downcase == "pirámide" || op.downcase == "piramide" || op == "3"
            fig = 3
        elsif op.downcase == "salir" || op == "4"
            fig = 4
        else
            fig = 5
            while fig == 5 do
                puts "\n"
                puts "Opción inválida"
                puts "\n"
                puts "Por favor elegir correctamente"
                print menu
                op = gets.chomp
                
                if op.downcase == "cuadrado" || op == "1"
                    fig = 1
                    elsif op.downcase == "triángulo" ||op.downcase == "triangulo" || op == "2"
                        fig = 2
                    elsif op.downcase == "pirámide" || op.downcase == "piramide" || op == "3"
                        fig = 3
                    elsif op.downcase == "salir" || op == "4"
                        fig = 4
                    else
                        fig = 5
                end 
                
            end
    end
    return fig   
end

figura = participa()

if figura == 1 || figura == 2 || figura ==3
    puts ""
    puts "¿Cúantos caracteres debe tener?"
    lados = gets.chomp.to_i

    while lados.to_i < 1 do
        puts ""
        puts "Debe ser un número mayora 0"
        puts "¿Cúantos caracteres debe tener?"
        lados = gets.chomp
    end

    else
        num = 0
        puts ""
        puts "¡Hasta luego!"

end

#DEFINIR CUADRADO
def cuadrado(num)
    num.times do
        print "*"
    end
    print "\n"
    (num-2).times do
        print "*"
        (num-2).times do
            print " "
         
        end
        print "*"
        print "\n"
    end
    
    num.times do
        print "*"
    end
end

#DEFINIR TRIANGULO
def triangulo(num)
    (num+1).times do |i|
        i.times do
            print "*"
        end
        print "\n"
    end
end

#DEFINIR PIRÁMIDE
def piramide(num)
    (num+1).times do |i|
        i.times do
            print "*"
        end
        print "\n"
    end

    (num+1).times do |j|
        (num-j).times do
            print "*"
        end
        print "\n"
    end
end

puts ""
if figura == 1
    cuadrado(lados)
    elsif figura == 2
        triangulo(lados)
    elsif figura == 3
        piramide(lados)
end

puts""
puts "Muchas gracias por participar"
