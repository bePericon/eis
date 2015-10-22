########## Scenario: no hice operaciones

Given(/^no hice operaciones$/) do
  visit '/'
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

Given(/^hago una resta$/) do
  fill_in('primer_operando', with: '2')
  fill_in('segundo_operando', with: '1')
  click_button('calcular')
end

########## Scenario: cuando reseteo la cantidad de operaciones vuelve a cero

Given(/^reseteo la memoria$/) do
  click_button('Resetear memoria')
end