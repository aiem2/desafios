pw = ARGV[0].to_s

contador = 0
inicial = 'a'

if pw == inicial 
    print "#{contador} intentos"

    else
        while inicial != pw
            inicial = inicial.next
            contador += 1
        end

end

print "#{contador} intentos"