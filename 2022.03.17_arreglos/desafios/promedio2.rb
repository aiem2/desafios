arreglo1 = [1,2,3]
arreglo2 = [2,4,6]

def compara_arrays(arreglo1,arreglo2)
    n1 = arreglo1.count
    n2 = arreglo2.count
    tot1 = 0
    tot2 = 0

    n1.times do |i|
        tot1 += arreglo1[i]
    end
    avg1 = tot1/n1

    n2.times do |i|
        tot2 += arreglo2[i]
    end
    avg2 = tot2/n2
    
    if avg1 > avg2
        puts "El promedio mayor es #{avg1}"
        else
            puts "El promedio mayor es #{avg2}"
    end
    
end

compara_arrays(arreglo1,arreglo2)