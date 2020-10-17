class Tamagushi

  def initialize(nome, fome, saude, idade)
    @nome = nome
    @fome = fome
    @saude = saude
    @idade = idade
  end

  def alterarNome(nome)
    @nome = nome
  end

  def alterarFome(fome)
    @fome = fome
  end

  def alterarSaude(saude)
    @saude = saude
  end

  def alterarIdade(idade)
    @idade = idade
  end

  def retonarNome
    @nome
  end

  def retonarFome
    @fome
  end

  def retonarSaude
    @saude
  end

  def retonarIdade
    @idade
  end

  def humor
    resp = ""
    fome = (rand * @fome).floor
    saude = (rand * @saude).floor
    humor = fome + saude
    if humor <= 0
      resp = "Mau humor"
    elsif humor > 0 && humor <= 10
      resp = "Bom humor"
    else
      resp = "Excelente humor"
    end
    resp
  end
end

bicho = Tamagushi.new("Zé", 4, 6,9)

puts 'Informação do bichinho virtual:'
puts "Nome: #{bicho.retonarNome} - Fome: #{bicho.retonarFome} - Saúde: #{bicho.retonarSaude} - Idade: #{bicho.retonarIdade}"
puts "O humor dele está: #{bicho.humor}"
bicho.alterarFome(1)
bicho.alterarSaude(2)
puts "O humor dele está agora: #{bicho.humor}"