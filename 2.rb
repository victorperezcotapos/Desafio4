module Formula
  def perimetro(lado1, lado2)
    return 2*(lado1.to_i+lado2.to_i)
  end

  def area(lado1, lado2)
    return (lado1.to_i*lado2.to_i)
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo=largo
    @ancho=ancho
  end
  def lados
    return [@largo,@ancho]
  end
end
class Cuadrado
  include Formula
  def initialize(lado)
  @lado=lado
  end
  def lados
    return [@lado,@lado]
  end
end

rec = Rectangulo.new(2,4)
cuad = Cuadrado.new(2)

rec.perimetro(rec.lados[0],rec.lados[1])
rec.area(rec.lados[0],rec.lados[1])
cuad.perimetro(cuad.lados[0],cuad.lados[1])
cuad.area(cuad.lados[0],cuad.lados[1])
