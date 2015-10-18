class Calculadora

  def initialize
    @primer_operando = 0
    @segundo_operando = 0
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
  
end