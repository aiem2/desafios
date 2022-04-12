pasos = ["100","500","221as","20310","10352000","213b","123","199","201"]

def clear_steps(pasos)
    pas = pasos
    enteros = pasos.map {|x| x.to_i}
    limpios = enteros.reject {|x| x>100000 || x<200}
    print limpios
end

clear_steps(pasos)


