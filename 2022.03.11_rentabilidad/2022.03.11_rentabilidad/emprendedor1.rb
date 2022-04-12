precio_ventas = ARGV[0].to_f
usuarios = ARGV[1].to_f
gastos = ARGV[2].to_f
impuestos = 0.35

un = precio_ventas*usuarios -gastos


if un > 0
    utilidades = (precio_ventas * usuarios - gastos) * (1 - impuestos) 
else
    utilidades = (precio_ventas * usuarios - gastos)
end

puts "Las utilidades que generará son $#{utilidades}"
