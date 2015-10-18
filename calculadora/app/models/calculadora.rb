class Calculadora

  def initialize
    @operaciones_realizadas = 0
  end
  
  def sumar(op1, op2)
    @operaciones_realizadas += 1
    return op1+op2
  end

  def restar(op1, op2)
    @operaciones_realizadas += 1
    return op1-op2
  end

  def multiplicar(op1, op2) 
    @operaciones_realizadas += 1   
    return op1*op2
  end

  def dividir(op1, op2)    
    @operaciones_realizadas += 1
    return op1/op2
  end

  def memoria
    @operaciones_realizadas
  end

  def resetear_memoria
    @operaciones_realizadas = 0    
  end
  
end