require 'rspec' 
require_relative '../model/caja_de_ahorro'

describe 'CajaDeAhorro' do

	it 'deberia crearse con saldo 0' do
		caja_de_ahorro = CajaDeAhorro.new
		expect(caja_de_ahorro.saldo).to eq 0
	end

end