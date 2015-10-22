require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    
    enable :sessions

    CALCULADORA = Calculadora.new

    get '/' do
      @operaciones_realizadas = CALCULADORA.memoria
      render 'operacion'
    end
    
    get 'hola' do
      'hey! hola , esto va a ser una calculadora!'
    end

    post '/' do
      @resultado = CALCULADORA.send(params[:operacion], params[:primer_operando].to_i, params[:segundo_operando].to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render 'operacion'
    end

    get 'resetear' do
      CALCULADORA.resetear_memoria
      redirect_to "/"
    end

  end
end