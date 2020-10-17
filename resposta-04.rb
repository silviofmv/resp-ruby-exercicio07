class Pessoa

  attr_accessor :nome, :idade, :peso, :altura

  def initialize(nome, idade, peso, altura)
    @nome = nome
    @idade = idade
    @peso = peso
    @altura = altura
  end

  def envelhecer
    if @idade < 21
      crescer
    end
    @idade += 1
  end

  def crescer
    @altura += 0.05
  end

  def engordar(quilo)
    @peso += quilo
  end

  def emagrecer(quilo)
    @peso -= quilo
  end
end

pessoa = Pessoa.new("Silvio Fernandes", 20, 70, 1.72)

puts "Nome: #{pessoa.nome}"
puts "Idade: #{pessoa.idade}"
puts "Pesso: #{pessoa.peso}"
puts "Altura: #{pessoa.altura}"

pessoa.envelhecer
pessoa.engordar 5
pessoa.emagrecer 2
puts
puts "Idade autal: #{pessoa.idade}"
puts "Pesso atual: #{pessoa.peso}"
puts "Altura atual: #{pessoa.altura}"

