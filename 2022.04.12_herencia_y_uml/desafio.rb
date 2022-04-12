# SUPERCLASS según esquema UML
class Appointment
    attr_reader :location, :purpose, :hour, :min
    def initialize (location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

#SUBCLASS según esquema UML

class OneTimeAppointment < Appointment
    attr_reader :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day,month,year)
        day == @day && month == @month && year == @year
    end

    def to_s
        puts "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}"
    end
end

class DailyAppointment < Appointment
    def initialize(location, purpose, hour, min)
        super(location, purpose, hour, min)
    end

    def occurs_on?(hour,min)
        hour == @hour && min == @min
    end

    def to_s
        puts "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}"
    end
end

class MonthlyAppointment < Appointment
    attr_reader :day
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on?(day)
        day == @day
    end

    def to_s
        puts "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{@min}"
    end
end

cita_unica1 = OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
puts cita_unica1
puts cita_unica1.occurs_on?(4,6,2019)
puts "\n"
cita_diaria1 = DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
puts cita_diaria1
puts cita_diaria1.occurs_on?(8,15)
puts "\n"
cita_mensual1 = MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
puts cita_mensual1
puts cita_mensual1.occurs_on?(23)