########## Scenario: no hice operaciones

Given(/^no hice operaciones$/) do
  visit '/sumar'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |cantidad|
  if page.respond_to? :should
    page.should have_content(cantidad)
  else
    assert page.has_content?(cantidad)
  end
end

########## Scenario: cuando hago operaciones la cantidad se incrementa

Given(/^hago una suma$/) do
  fill_in('primer_operando', with: '1')
  fill_in('segundo_operando', with: '1')
  click_button('calcular')
end

Given(/^vuelvo atras$/) do
  click_button('Pagina principal')
end

Given(/^hago una resta$/) do
  fill_in('primer_operando', with: '2')
  fill_in('segundo_operando', with: '1')
  click_button('calcular')
end

########## Scenario: cuando reseteo la cantidad de operaciones vuelve a cero

Given(/^reseteo la memoria$/) do
  click_button('Resetear memoria')
end



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