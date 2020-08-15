class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        if !(1..13).include?(numero)
            raise ArgumentError, 'El número no está entre 1 y 13'
        end
        if !['C', 'D', 'E', 'T'].include?(pinta)
            raise ArgumentError, 'La pinta no es C, D, E, T'
        end
        @numero = numero
        @pinta = pinta
    end
end