n = ARGV[0].to_i

# LETRA O
def letra_o(n)
    n.times do 
        print "*"
    end
    print "\n"
    (n-2).times do
       print "*"
        (n-2).times do
            print " "    
        end
        print "*"
        puts ""
    end
   
    n.times do 
        print "*"
    end
end

letra_o(n)
puts ""
puts ""


#LETRA I
def letra_i(n)
    n.times do 
        print "*"
    end
    print "\n"
    (n-2).times do
        ((n/2)-1).times do
            print " "    
        end
        print "*"
        print "\n"
              
    end
  
    n.times do 
        print "*"
    end
end

letra_i(n)
print "\n"
print "\n"


#LETRA Z
def letra_z(n)
    n.times do 
        print "*"
    end
    print "\n"

    (n-2).times do |i|
        n.times do |j|
            if j == n - (i + 1)
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
    n.times do 
        print "*"
    end
end

letra_z(n)
print "\n"
print "\n"

#LETRA X
def letra_x(n)
    n.times do |i|
        n.times do |j|
            if j == n - (i + 1)
                print "*"
            elsif j == i
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end

end

letra_x(n)
print "\n"
print "\n"


#NÚMERO CERO
def numero_cero(n)
    n.times do
        print "*"
    end
    print "\n"
    
    1.times do
        2.times do
            print "*"
        end
        2.times do
            print " "
        end
        print "*"
    end
    print "\n"

    1.times do
        print "*"
        print " "
        print "*"
        print " "
        print "*"
    end
    print "\n"

    1.times do
        print "*"
        2.times do
            print " "
        end
        2.times do
            print "*"
        end
        
    end
    print "\n"

    n.times do
        print "*"
    end

end

numero_cero(n)
print "\n"
print "\n"


#NAVIDAD
def navidad(n)
   1.times do
       3.times do
            print " "
       end
       print "*"
    end
    print "\n"

    1.times do
        2.times do
            print " "
        end
        print "*"
        print " "
        print "*"
    end
    print "\n"

    1.times do
        print " "
        print "*"
        print " "
        print "*"
        print " "
        print "*"
        print " "
    end        
    print "\n"

    1.times do
        print "*"
        print " "
        print "*"
        print " "
        print "*"
        print " "
        print "*"
    end        
    print "\n"

    2.times do
        3.times do
            print " "
        end
        print "*"
        print "\n"
    end

    1.times do
        print " "
        print "*"
        print " "
        print "*"
        print " "
        print "*"
    end    

end

navidad(7)


