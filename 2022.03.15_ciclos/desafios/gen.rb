def gen
    n = ARGV[0].to_i
    letra = "a"
    (n-1).times do |i|
        print letra
        letra = letra.next
    end
    print letra 
end

print '"'
print gen
print '"'