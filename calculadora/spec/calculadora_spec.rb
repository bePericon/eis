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
    expect(calculadora.memoria.length).to eq 0
  end
end