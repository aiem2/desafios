precio_ventas = ARGV[0].to_f
usuarios = ARGV[1].to_f
premium = ARGV[2].to_f
gratis = ARGV[3].to_f
gastos = ARGV[4].to_f
impuestos = 0.35

ventas_totales = ((usuarios - premium - gratis)*precio_ventas)+(premium * precio_ventas*2)
ut = ventas_totales - gastos

if ut > 0
    utilidades = (ventas_totales - gastos) * (1 - impuestos)
else
    utilidades = (ventas_totales - gastos)
end

puts "Las utilidades que generará son $#{utilidades}"