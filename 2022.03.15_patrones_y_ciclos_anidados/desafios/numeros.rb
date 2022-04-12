n = ARGV[0].to_i
num =1

(n+1).times do |i|
    i.times do |j|
        print num*(j+1)
    end
    print "\n"
end
