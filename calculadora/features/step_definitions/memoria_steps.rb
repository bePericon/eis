
=begin
require_relative '../../app/models/calculadora.rb'

Given(/^no hice operaciones$/) do
  @calculadora = Calculadora.new
end

Then(/^la cantidad de operaiones es (\d+)$/) do |arg1|
  expect(@calculadora.memoria).to eq arg1.to_i
end

#############################################################################

Given(/^hago una suma$/) do
  @calculadora = Calculadora.new
  @res_suma = @calculadora.sumar(2,2)
end

Given(/^hago una resta$/) do
  @res_resta = @calculadora.restar(10,5)
end

#############################################################################

Given(/^reseteo la memoria$/) do
  @calculadora.resetear_memoria
end
=end