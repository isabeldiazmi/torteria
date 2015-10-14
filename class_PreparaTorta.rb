class PreparaTorta
  
  def initialize(arr_ingredientes)
    @ingredientes = arr_ingredientes
  end

  def tiempo_de_horneado
    @ingredientes.length + 2
  end

end

class HorneaTortas < PreparaTorta

  attr_accessor :tiempo_horno

  def initialize
    @arr_tortas = []
    @tiempo_horno = 5
  end

  def agrega_torta(torta)
    @arr_tortas << torta
  end

  def resultado_lote
    @arr_tortas.each do |x|
      puts "La torta numero #{@arr_tortas.index(x)+1} esta #{etapa_de_horneado(x)}"
    end
  end

  private

  def etapa_de_horneado(torta)
    t = torta.tiempo_de_horneado
    if @tiempo_horno < t*0.5
      "cruda"
    elsif @tiempo_horno < t*0.9
      "casi lista"
    elsif @tiempo_horno <= t*1.1
      "lista"
    else
      "quemada"
    end
  end

end

torta1 = PreparaTorta.new(["jamon", "queso", "lechuga", "jitomate"])
torta2 = PreparaTorta.new(["jamon", "queso"])
torta3 = PreparaTorta.new(["jamon", "queso", "lechuga", "jitomate", "pollo"])
torta4 = PreparaTorta.new(["jamon", "queso", "lechuga", "jitomate", "pollo", "frijoles"])
torta5 = PreparaTorta.new(["jamon", "queso", "lechuga", "jitomate"])

horneado = HorneaTortas.new
horneado.agrega_torta(torta1)
horneado.agrega_torta(torta2)
horneado.agrega_torta(torta3)
horneado.agrega_torta(torta4)
horneado.agrega_torta(torta5)

horneado.tiempo_horno=(7)
horneado.resultado_lote