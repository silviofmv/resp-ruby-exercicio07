class Quadrado

  def initialize(lado)
    @lado = lado
  end

  def mudarLado(lado)
    @lado = lado
  end

  def mostrarLado()
    @lado
  end

  def calcularArea()
    @lado ** 2
  end

end

quadrado = Quadrado.new(7)

puts "O lado do quadrado é: #{quadrado.mostrarLado}"
puts "A área do quadrado é: #{quadrado.calcularArea}"
quadrado.mudarLado(10)
puts
puts "O novo lado do quadrado é: #{quadrado.mostrarLado}"
puts "A nova área do quadrado é: #{quadrado.calcularArea}"
