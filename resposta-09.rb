class Ponto

  attr_accessor :x, :y

  def initialize(retangulo)
    @x = retangulo[0]
    @y = retangulo[1]
  end

  def mostrarPontos()
    [@x, @y]
  end
end

class Retangulo

  def initialize(largura, altura)
    @largura = largura
    @altura = altura
  end

  def mudarLargura(largura)
    @largura = largura
  end

  def mudarAltura(altura)
    @altura = altura
  end

  def encontrarCentro
    [@largura/2, @altura/2]
  end
end

ret01 = Retangulo.new(5.0,10.0)
ret02 = Retangulo.new(8.0,19.0)

begin
  puts 'Escolha:'
  puts '1 - Alterar largura do retângulo'
  puts '2 - Alterar altura do retângulo'
  puts '    Qualquer outro numéro para sair'
  print 'Digite sua opção: '
  resp = gets.to_f
  if resp == 1
    print 'Digite a largura do retângulo: '
    largura = gets.to_f
    ret01.mudarLargura(largura)
  elsif resp == 2
    print 'Digite a altura do retângulo: '
    altura = gets.to_f
    ret01.mudarAltura(altura)
  end
end while resp >= 1 && resp <= 2
puts
puts "O centro do retangulo é #{ret01.encontrarCentro}"
puts
p01 = Ponto.new(ret01.encontrarCentro)

puts "O ponto X é #{p01.x}"
puts "O ponto Y é #{p01.y}"

