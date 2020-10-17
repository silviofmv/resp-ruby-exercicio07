class ContaCorrente

  attr_accessor :numero_conta, :correntista, :saldo

  def initialize(numero_conta, correntista)
    @numero_conta = numero_conta
    @correntista = correntista
    @saldo = 0
  end

  def alterarNome(nome)
    @correntista = nome
  end

  def deposito(valor)
    @saldo += valor
  end

  def saque(valor)
    @saldo -= valor
  end
end

contaCorrente = ContaCorrente.new(34232,"Silvio Fernandes")

puts "Nº da Conta: #{contaCorrente.numero_conta}"
puts "COrrentista: #{contaCorrente.correntista}"
puts "Saldo da Conta: #{contaCorrente.saldo}"

contaCorrente.deposito 300
contaCorrente.saque 100
contaCorrente.alterarNome "Silvio Fernandes Menezes Vasconcelos"

puts
puts "Nº da Conta: #{contaCorrente.numero_conta}"
puts "COrrentista: #{contaCorrente.correntista}"
puts "Saldo da Conta: #{contaCorrente.saldo}"
