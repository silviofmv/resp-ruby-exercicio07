class Bola

  def initialize(cor, circunferencia, material)
    @cor = cor
    @circunferencia = circunferencia
    @material = material
  end

  def trocarCor(cor)
    @cor = cor
  end

  def mostrarCor()
    @cor
  end
end

bola = Bola.new("Amarela", 15, "Burracha")

puts "A cor da bola inicial é #{bola.mostrarCor}"
bola.trocarCor("Marrom")
puts "Agora a cor da bola mudou para #{bola.mostrarCor}"