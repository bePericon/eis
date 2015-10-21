require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    
    enable :sessions

    CALCULADORA = Calculadora.new

    get '/' do
      render 'calculadora'
    end
    
    get 'hola' do
      'hey! hola , esto va a ser una calculadora!'
    end

    get ':operacion' do
      @operaciones_realizadas = CALCULADORA.memoria
      render "#{params[:operacion]}"
    end

    post ':operacion' do
      @resultado = CALCULADORA.send("#{params[:operacion]}", params[:primer_operando].to_i, params[:segundo_operando].to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render "#{params[:operacion]}"
    end

    get 'resetear/:operacion' do
      CALCULADORA.resetear_memoria
      redirect_to "#{params[:operacion]}"
    end

  end
end