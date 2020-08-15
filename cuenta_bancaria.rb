class CuentaBancaria
    attr_accessor :nombre_banco, :numero_cuenta, :saldo
    def initialize(nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end
    #crear metodo transferir (restara del saldo actual el monto
    #y aumentara el saldo de la otra cuenta en el mismo monto)
    def transferir(monto, cuenta_externa)
        @saldo = @saldo - monto
        cuenta_externa.saldo = cuenta_externa.saldo + monto
    end
end

cuenta1 = CuentaBancaria.new('Chile', 123456, 5000)
cuenta2 = CuentaBancaria.new('Estado', 234567, 5000)
cuenta3 = CuentaBancaria.new('BCI', 345678, 7000)
cuenta4 = CuentaBancaria.new('Falabella', 456789, 7000)

cuenta1.transferir(5000, cuenta2)
print cuenta1.inspect
print cuenta2.inspect

class Usuario
    attr_accessor :nombre_usuario
    def initialize(nombre_usuario, cuentas_bancarias)
        @nombre_usuario = nombre_usuario
        @cuentas_bancarias = cuentas_bancarias
    end

    def saldo_total
        total = 0
        @cuentas_bancarias.each do |cuenta_bancaria|
            total += cuenta_bancaria.saldo
        end
        total
    end
end

usuario1 = Usuario.new('Jose', [cuenta3, cuenta4])
print usuario1.saldo_total.inspect