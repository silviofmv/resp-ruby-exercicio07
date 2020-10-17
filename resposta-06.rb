class TV

  attr_accessor :canal, :volume, :canais, :volumes, :faixa_valida, :volume_valido

  def initialize(canal, volume)
    @canais = [2, 4, 6, 8, 9, 10, 11, 13, 16, 32, 50]
    @volumes = [0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    @canal = canal
    @volume = volume
    @faixa_valida = validar_faixa(canal)
    @volume_valido = validar_valume(volume)
  end

  def validar_faixa(faixa)
    resp = false
    @canais.each do |canal|
      if canal == faixa
        resp = true
        break
      end
    end
    resp
  end

  def validar_valume(volume)
    resp = false
    @volumes.each do |vol|
      if vol == volume
        resp = true
        break
      end
    end
    resp
  end

  def aumentar(volume)
    @volume = volume
    @volume_valido = validar_valume(volume)
    @volume_valido
  end

  def diminuir(volume)
    @volume = volume
    @volume_valido = validar_valume(volume)
    @volume_valido
  end

end

tv = TV.new(8, 4)
if tv.faixa_valida == true && tv.volume_valido == true
  puts "Dados Iniciais: Canal: #{tv.canal} e Volume: #{tv.volume}"

  if tv.aumentar(9) == true
    puts
    puts "Canal: #{tv.canal}"
    puts "Volume: #{tv.volume}"
  else
    puts "Volume inválido..."
  end
else
  puts 'Canal ou volume inexistente...'
end
