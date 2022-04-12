require 'CSV'
data = CSV.open("notas_data").read

def nota_mas_alta(data)
    n = data.count
    alumnos = []
    n.times do |i|
        nombre = data[i][0]
        
        nombre_a = []
        nombre_a.push(nombre)
        
        notas = data[i] - nombre_a
        notas_ord = notas.sort
        nota_fin = notas_ord[-1]
        
        alumno = []
        alumno.push(nombre, nota_fin)
        alumnos.push(alumno)
    end
    print alumnos
end

nota_mas_alta(data)
