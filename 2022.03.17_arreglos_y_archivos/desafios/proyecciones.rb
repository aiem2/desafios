ventas = open("ventas_base.db").read.split(" ")
ventas_int = ventas.map {|x| x.to_f}

pra = 0
prn = 0
sga = 0
sgn = 0

ventas_int.each_with_index do |venta,index|
    if index == 0 || index == 1 || index == 2 
        pra += venta*1.1
        elsif index == 3 || index == 4 || index == 5 
            prn += venta
        elsif index == 6 || index == 7 || index == 8 
            sgn += venta
        else index == 9 || index == 10 || index == 11 
            sga += venta*1.2
    end
end

primer = pra + prn
segundo = sga + sgn
puts "Las ventas proyectadas del primer y segundo semestre son:"
puts "$ #{primer}"
puts "$ #{segundo}"

resultados = []
resultados.push(primer)
resultados.push(segundo)

File.write("resultados.data", "// ESTOS VALORES SON REFERENCIALES\n#{primer}\n#{segundo}")
