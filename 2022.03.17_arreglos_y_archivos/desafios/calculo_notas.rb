require 'CSV'
data = CSV.open("notas_data").readlines 

def nota_mas_alta(linea,data)
    notas = []
    n = linea.count
    (n-1).times do |i|
        notas.push(linea[i+1].to_i)
        
    end
    finales = notas.sort
    final = finales[-1]
    nombre = linea[0]

    puts "El alumno #{nombre} tiene como nota máxima #{final}"
end

linea = data[4]
nota_mas_alta(linea,data)
