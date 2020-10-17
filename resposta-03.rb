class Retangulo

  def initialize(ladoA, ladoB)
    @ladoA = ladoA
    @ladoB = ladoB
  end

  def mudarLados(ladoA, ladoB)
    @ladoA = ladoA
    @ladoB = ladoB
  end

  def mostrarLados()
    [@ladoA, @ladoB]
  end

  def calcularArea()
    @ladoA * @ladoB
  end

  def calcularPerimetro()
    2 * (@ladoA + @ladoB)
  end
end

print 'Digite a base do local: '
base = gets.to_f
print 'Digite a altura do local: '
altura = gets.to_f

retangulo = Retangulo.new(base,altura)

puts "A quantidade de pisos é: #{retangulo.calcularArea}"
puts "Quantidade de roda-ṕe é: #{retangulo.calcularPerimetro}"
