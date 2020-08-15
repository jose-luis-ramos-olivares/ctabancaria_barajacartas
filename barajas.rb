require_relative 'carta'

class Baraja
    attr_accessor :cartas
    def initialize(cartas)
        pintas = ['C','D','E','T']
        @cartas =[]
        pintas.each do |pinta|
            13.times do |i|
                @cartas.push(Carta.new(i+1, pinta))
            end
        end
    end

    def barajar        
        @cartas = @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
    end
end