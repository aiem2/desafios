array = ARGV

def chart(array)
    numeros = array.map {|x| x.to_i}
    n = array.count
    if n > 0
        n.times do |i|
            print "|"
            (numeros[i]).times do
                print "*" *2
            end
            puts " "
        end

        puts ">---------------------"
        puts "1 2 3 4 5 6 7 8 9 10"
    else
        print ""
    end        
end

chart(array)
