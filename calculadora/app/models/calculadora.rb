class Calculadora

  def initialize
    @operaciones_realizadas = []
  end
  
  def sumar(op1, op2)
    return op1+op2
  end

  def restar(op1, op2)
    return op1-op2
  end

  def multiplicar(op1, op2)    
    return op1*op2
  end

  def dividir(op1, op2)    
    return op1/op2
  end

  def memoria
    @operaciones_realizadas
  end
  
end