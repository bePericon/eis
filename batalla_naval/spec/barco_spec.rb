require 'rspec' 
require_relative '../model/barco'

describe 'Barco' do
  let(:barcoChico) { Barco.new('barco_chico',1)}
  let(:barcoGrande) { Barco.new('barco_grande',3)}
  
  it 'Creacion de barcos, cada uno con su nombre y tamaño' do
    expect(barcoChico.su_nombre).to eq 'barco_chico'
    expect(barcoChico.su_tamanio).to eq 1
    expect(barcoGrande.su_nombre).to eq 'barco_grande'
    expect(barcoGrande.su_tamanio).to eq 3
  end

end