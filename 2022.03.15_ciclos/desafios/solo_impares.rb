n = ARGV[0].to_i

(n*2).times do |i|
    if i%2==0
        print " "
    else
        print i
    end
end