# password_hacker.rb
pw = ARGV[0].to_s
claves = open("claves.txt").read.chomp.split(" ")
n = claves.count

n.times do |clav|
    claves << "#{claves[clav]}1"
    claves << "#{claves[clav]}12"
    claves << "#{claves[clav]}123"
end

final = claves.sort

intentos = final.index(pw) + 1

puts "Se necesitaron #{intentos} intentos"
