# Consigna: 
#  Escribir la clase Chopper de manera tal que todas las preubas pase. 
#  Hacer pasar las pruebas de 1 por vez utilizando TDD a integración continua
#
# Una vez completa la tarea, generar un TAG en el repositorio y subir a alfred el link a dicho TAG
# Fecha de entrega 13 de Septiembre

require 'rspec' 
require_relative '../model/chopper'

describe 'Chopper' do

	let(:chopper) { Chopper.new }  

	it 'chop de 3 y vacio deberia ser -1' do
		expect(chopper.chop(3,[])).to eq -1
	end

	it 'chop de 3 y [3] deberia ser 0' do
		expect(chopper.chop(3,[3])).to eq 0 
	end

	it 'chop de 3 y [0,7,3] deberia ser 0' do
		expect(chopper.chop(3,[0,7,3])).to eq 2 
	end
=begin
	it 'sum de [] deberia ser vacio' do
		expect(chopper.sum([])).to eq 'vacio' 
	end

	it 'sum de [1] deberia ser uno' do
		expect(chopper.sum([1])).to eq 'uno'
	end

	it 'sum de [1,3] deberia ser cuatro' do
		expect(chopper.sum([1,3])).to eq 'cuatro'
	end

	it 'sum de [9,9] deberia ser uno,ocho' do
		expect(chopper.sum([9,9])).to eq 'uno,ocho'
	end

	it 'sum de [50,50] deberia ser demasiado grande' do
		expect(chopper.sum([50,50])).to eq 'demasiado grande'
	end

	it 'sum de [50,49] deberia ser nueve,nueve' do
		expect(chopper.sum([50,49])).to eq 'nueve,nueve'
	end
=end

end