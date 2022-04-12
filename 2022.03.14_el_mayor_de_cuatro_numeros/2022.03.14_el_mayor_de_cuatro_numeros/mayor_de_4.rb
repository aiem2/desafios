n1 = ARGV[0].to_i
n2 = ARGV[1].to_i
n3 = ARGV[2].to_i
n4 = ARGV[3].to_i


if n1>=n2 && n1>=n3 && n1>=n4
    puts n1
elsif
    n2>=n1 && n2>=n3 && n2>=n4
    puts n2
elsif
    n3>=1 && n3>=n2 && n3>=n4
    puts n3
else n4>=n1 && n4>=n2 && n4>=n3
    puts n4
end