require_relative '../../app/models/calculadora.rb'

Given(/^no hice operaciones$/) do
  @calculadora = Calculadora.new
end

Then(/^la cantidad de operaiones es (\d+)$/) do |arg1|
  expect(@calculadora.memoria.length).to eq 0
end

#############################################################################