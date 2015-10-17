require 'rspec' 
require_relative '../app/models/calculadora'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }
  
  it 'Calculo de suma, operando 1 mas operando 2 es igual a 3' do
    expect(calculadora.sumar(1,2)).to eq 3
  end

end