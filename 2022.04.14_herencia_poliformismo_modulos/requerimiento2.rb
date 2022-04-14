#MÓDULOS DEL REQUERIMIENTO
module Habilidades
    module Volador
        def volar
            puts 'Estoy volandooooo!'
        end
    
        def aterrizar
            puts 'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            puts 'Estoy nadando!'
        end
    
        def sumergir
            puts 'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            puts 'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            puts 'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comer
            puts 'Puedo comer carne!'
        end
    end
end

# Requerimiento 1
class Animal
    attr_accessor :nombre
    def initialize (nombre)
        @nombre = nombre
    end   
end 

# Requerimiento 2
class Ave < Animal
    def nombre
        puts "#{@nombre}"
    end
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro

end

class Mamifero < Animal
    include Habilidades::Caminante
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

# Requerimiento 3
class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Nadador
end

class Paloma < Ave
end

class Pato < Ave
    include Habilidades::Nadador
    include Habilidades::Nadador
end

# Requerimiento 4
class Perro < Mamifero
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
end

# Requerimiento 5
class Mosca < Insecto
end

class Mariposa < Insecto
end

class Abeja < Insecto
    def nombre
        puts "#{@nombre}"
    end
end

perro = Vaca.new('Bobby').comer
pato = Gato.new('Patito').comer
abeja = Abeja.new('Pintadita').volar

