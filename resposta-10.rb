class BombaCombustível

  attr_accessor :tipoCombustivel, :valorLitro, :quantCombustivel

  def initialize(tipo, valor, quantidade)
    @tipoCombustivel = tipo
    @valorLitro = valor
    @quantCombustivel = quantidade
  end

  def abastecerPorValor(valor)
    litros = valor / @valorLitro
    @quantCombustivel -= litros
    litros
  end

  def abastecerPorLitro(litro)
    valor = litro * @valorLitro
    @quantCombustivel -= litro
    valor
  end

  def alterarCombustivel(tipo)
    @tipoCombustivel = tipo
  end

  def alterarQuantidadeCombustivel(quantidade)
    @quantCombustivel = quantidade
  end
end

bc = BombaCombustível.new("Gasolina", 4.3, 1000)

puts "Dados iniciais: tipo = #{bc.tipoCombustivel}, valor = #{bc.valorLitro} e quantidade = #{"%.4f" % bc.quantCombustivel} litros"
puts "Abastecer R$ 100.00, vai dar #{"%.4f" % bc.abastecerPorValor(100)} litros"
puts "Abastecer 100 litros, vai custar R$ #{"%.2f" % bc.abastecerPorLitro(100)}"

puts "Dados atuais: tipo = #{bc.tipoCombustivel}, valor = #{bc.valorLitro} e quantidade = #{"%.4f" %bc.quantCombustivel} litros"
