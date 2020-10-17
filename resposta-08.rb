class Macaco

  attr_accessor :nome

  def initialize(nome)
    @nome = nome
    @bucho = []
  end

  def comer(comida)
    @bucho << comida
  end

  def verBucho()
    @bucho
  end

  def digerir()
    @bucho = []
  end

end

macaco1 = Macaco.new("zeze")
macaco2 = Macaco.new("mane")

macaco1.comer("banana")
macaco1.comer("maça")
macaco1.comer("folha")

macaco2.comer("uva")
macaco2.comer("manga")
macaco2.comer("goiaba")

puts "No estomago do macaco #{macaco1.nome} tem: #{macaco1.verBucho}"
puts
puts "No estomago do macaco #{macaco2.nome} tem: #{macaco2.verBucho}"

macaco2.comer(macaco1)
puts
puts "No estomago do macaco #{macaco2.nome} tem: #{macaco2.verBucho}"
