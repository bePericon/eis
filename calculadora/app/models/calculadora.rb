class Calculadora

  def initialize
    @primer_operando = 0
    @segundo_operando = 0
  end
  
  def sumar(op1, op2)
    @primer_operando = op1
    @segundo_operando = op2

    return op1+op2
  end
  
end