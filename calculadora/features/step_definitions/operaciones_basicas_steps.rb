#require_relative '../../app/models/calculadora.rb'

Given(/^un operando es 1$/) do 
  @calculadora = Calculadora.new
  @primer_operando = 1
end

Given(/^otro operando es 2$/) do
  @segundo_operando = 2
end

When(/^los sumo$/) do
  @resultado = @calculadora.sumar(@primer_operando, @segundo_operando)
end

Then(/^el resultado es 3$/) do
  expect(@resultado).to eq 3
end
