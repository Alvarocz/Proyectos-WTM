class Lanchero
  def initialize(nombre, cedula)
    @nombre = nombre
    @cedula = cedula

    if traslado.dia == 6 || traslado.dia == 7
      @ganancia = calcular_ganancia(traslado.tarifa, 80)
    else
      @ganancia = calcular_ganancia(traslado.tarifa, 90)
    end
  end

  def agregarTraslado(traslado)
    @traslado = traslado
  end

  def ganancia
    @ganancia
  end
end

class Cayo
  def initialize(numero, nombre, tarifa)
    @numero = numero
    @nombre = nombre
    @tarifa = tarifa
  end
end

class Traslado
  def initialize(lanchero, dia, cayo)
    @lanchero = lanchero
    @dia = dia
    @cayo = cayo
    @tarifa = cayo.tarifa
  end
end

def calcular_ganancia(valor, porcentaje)
  ganancia = valor * (porcentaje.to_f / 100)
end

cayo_sal = Cayo.new(1, "SAL", 500)
cayo_muerto = Cayo.new(2, "MUERTO", 600)
cayo_peraza = Cayo.new(3, "PERAZA", 700)
cayo_sombrero = Cayo.new(4, "SOMBRERO", 800)
cayo_bocaseca = Cayo.new(5, "BOCASECA", 900)
cayo_varadero = Cayo.new(6, "VARADERO", 1000)
cayo_borracho = Cayo.new(7, "BORRACHO", 1100)

fernando = Lanchero.new("Fernando", 122345784)
fran = Lanchero.new("Fran", 144578977)
roberto = Lanchero.new("Roberto", 151114797)
federico = Lanchero.new("Fererico", 125528798)

traslado_sal = Traslado.new(fernando, 2, cayo_sal)
traslado_sombrero = Traslado.new(roberto, 1, cayo_sombrero)
traslado_muerto = Traslado.new(federico, 3, cayo_muerto)
traslado_muerto2 = Traslado.new(federico, 4, cayo_muerto)
traslado_varadero = Traslado.new(fran, 6, cayo_varadero)
traslado_borracho = Traslado.new(roberto, 7, cayo_borracho)

fernando.agregarTraslado(traslado_sal)
roberto.agregarTraslado(traslado_sombrero)
roberto.agregarTraslado(traslado_borracho)
federico.agregarTraslado(traslado_muerto)
federico.agregarTraslado(traslado_muerto2)
fran.agregarTraslado(traslado_varadero)