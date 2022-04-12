visitas = [1000,800,250,300,500,2500]

def promedio(visitas)
    n = visitas.count
    total = 0
    n.times do |num|
        total += visitas[num].to_i
    end
    promedio = total/n
    puts promedio
end

promedio(visitas)
