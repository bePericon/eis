require_relative '../../app/models/calculadora.rb'

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

#############################################################################

Given(/^un primer operando que es 2$/) do
  @calculadora = Calculadora.new
  @primer_operando = 2
end

Given(/^un segundo operando que es 1$/) do
  @segundo_operando = 1
end

When(/^resto el primero operando por el segundo$/) do
  @resultado = @calculadora.restar(@primer_operando, @segundo_operando)
end

Then(/^el resultado es 1$/) do 
  expect(@resultado).to eq 1
end

#############################################################################

Given(/^un segundo operando que es 2$/) do
  @segundo_operando = 2
end

When(/^los multiplico entre si$/) do
  @resultado = @calculadora.multiplicar(@primer_operando,@segundo_operando)
end

Then(/^el resultado es 4$/) do
  expect(@resultado).to eq 4
end


