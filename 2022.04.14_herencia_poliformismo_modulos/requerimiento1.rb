class Person
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end
    
    def birthday
        @age += 1
    end
end

class Student < Person
    def nombre
        puts "#{@first_name} #{@last_name}"
    end

    def talk
        puts "¿Aquí ies la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def self.nombre
        puts "#{@first_name} #{@last_name}"
    end

    def talk
        puts "¿Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def nombre
        puts "#{@first_name} #{@last_name}"
    end

    def talk
        puts "¡Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

Student.new('Ignacio','Espinosa',36,'Student').talk
Student.new('Ignacio','Espinosa',36,'Student').introduce
puts "\n"
Parent.new('Ignacio','Espinosa',36,'Student').talk
Parent.new('Ignacio','Espinosa',36,'Student').introduce
puts "\n"
Teacher.new('Ignacio','Espinosa',36,'Student').talk
Teacher.new('Ignacio','Espinosa',36,'Student').introduce

