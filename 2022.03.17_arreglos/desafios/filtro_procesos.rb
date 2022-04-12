factor = ARGV[0].to_i

data = open("procesos_data").read.chomp.split(" ")
data_int = data.map {|x| x.to_i}
data_filt = data_int.reject {|x| x<factor}

puts "Se ha generado un nuevo archivo con los datos mayores a #{factor}"
File.write("procesos_filtrados.data", data_filt.join("\n"))


