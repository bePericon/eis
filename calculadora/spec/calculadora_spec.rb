require 'rspec' 
require_relative '../app/models/calculadora'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }
  
  it 'Calculo de suma, operando 1 mas operando 2 es igual a 3' do
    expect(calculadora.sumar(1,2)).to eq 3
  end

  it 'Calculo de resta, operando 2 menos operando 1 es igual a 1' do
    expect(calculadora.restar(2,1)).to eq 1
  end

  it 'Calculo de multiplicacion, operando 2 multiplicado por operando 2 es igual a 4' do
    expect(calculadora.multiplicar(2,2)).to eq 4
  end

  it 'Calculo de division, operando 4 dividido por operando 2 es igual a 2' do
    expect(calculadora.dividir(4,2)).to eq 2
  end

#############################################################################

  it 'Revisando la memoria, no se hizo ninguna operacion, resultado 0' do
    expect(calculadora.memoria).to eq 0
  end

  it 'Revisando la memoria, se hacen dos operaciones, resultado 2' do
    rs = calculadora.sumar(2,2)
    rr = calculadora.restar(10,5)

    expect(calculadora.memoria).to eq 2
  end

  #############################################################################

  it 'Revisando la memoria, se hacen dos operaciones, reseteo la memoria por ende el resultado es 0' do
    rs = calculadora.sumar(2,2)
    rr = calculadora.restar(10,5)

    calculadora.resetear_memoria

    expect(calculadora.memoria).to eq 0
  end
end