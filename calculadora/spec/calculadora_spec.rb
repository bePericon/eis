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

end