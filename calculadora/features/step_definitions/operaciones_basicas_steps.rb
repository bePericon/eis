########## Scenario: suma

Given(/^voy a la pagina de la calculadora$/) do
  visit '/'
end

Given(/^selecciono la operacion sumar$/) do
  click_button('sumar')
end

Given(/^un primer operando que es (\d+)$/) do |op1|
  fill_in('primer_operando', with: op1)
end

Given(/^un segundo operando que es (\d+)$/) do |op2|
  fill_in('segundo_operando', with: op2)
end

When(/^los sumo$/) do
  click_button('calcular')
end

Then(/^el resultado es (\d+)$/) do |resultado|
  expect(page).to have_content(resultado)
end

########## Scenario: resta

Given(/^selecciono la operacion restar$/) do
  click_button('restar')
end

When(/^resto el primero operando por el segundo$/) do
  click_button('calcular')
end

########## Scenario: promedio

Given(/^selecciono la operacion promedio$/) do
    click_button('promedio')
end

Given(/^un operando es (\d+)$/) do |op1|
  fill_in('primer_operando', with: op1)
end

Given(/^otro operando es (\d+)$/) do |op2|
  fill_in('segundo_operando', with: op2)
end

When(/^saco el promedio entre ellos$/) do
  click_button('calcular')
end

=begin
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
=end
