require_relative '../../app/models/calculadora.rb'

Given(/^un operando es (\d+)$/) do |op1|
  @calculadora = Calculadora.new
  @primer_operando = op1.to_i
end

Given(/^otro operando es (\d+)$/) do |op2|
  @segundo_operando = op2.to_i
end

When(/^los sumo$/) do
  @resultado = @calculadora.sumar(@primer_operando, @segundo_operando)
end

Then(/^el resultado es (\d+)$/) do |res|
  expect(@resultado).to eq res.to_i
end

#############################################################################

Given(/^un primer operando que es (\d+)$/) do |op1|
  @calculadora = Calculadora.new
  @primer_operando = op1.to_i
end

Given(/^un segundo operando que es (\d+)$/) do |op2|
  @segundo_operando = op2.to_i
end

When(/^resto el primero operando por el segundo$/) do
  @resultado = @calculadora.restar(@primer_operando, @segundo_operando)
end

#############################################################################

When(/^saco el promedio entre ellos$/) do
  @resultado = @calculadora.promedio(6,8)
end

#############################################################################

When(/^los multiplico entre si$/) do
  @resultado = @calculadora.multiplicar(@primer_operando,@segundo_operando)
end

#############################################################################

When(/^divido el primer operando por el segundo$/) do
  @resultado = @calculadora.dividir(@primer_operando, @segundo_operando)
end

