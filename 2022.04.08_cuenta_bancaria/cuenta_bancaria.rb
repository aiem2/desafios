class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize (nombre_de_usuario, numero_de_cuenta, tipo_de_cuenta = 0)
        raise RangeError, 'Las cuentas tienen 8 dígitos' if numero_de_cuenta.chars.count != 8
        raise RangeError, 'Las cuentas VIP son 1 y Regulares 0' if tipo_de_cuenta != 0 && tipo_de_cuenta != 1
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @tipo_de_cuenta = tipo_de_cuenta
    end
    def numero_de_cuenta
        "#{@tipo_de_cuenta}-#{@numero_de_cuenta}"
    end
end

cuenta1 = CuentaBancaria.new('Ignacio', '00112233')
print cuenta1.numero_de_cuenta