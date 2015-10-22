########## Scenario: suma

Given(/^voy a la pagina de la calculadora$/) do
  visit '/'
end

Given(/^selecciono la operacion sumar$/) do
  select('Sumar', from: 'operacion')
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
  select('Restar', from: 'operacion')
end

When(/^resto el primero operando por el segundo$/) do
  click_button('calcular')
end

########## Scenario: promedio

Given(/^selecciono la operacion promedio$/) do
  select('Promedio', from: 'operacion')
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
