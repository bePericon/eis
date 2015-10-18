require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    
    enable :sessions
    
    get 'hola' do
      'hey! hola , esto va a ser una calculadora!'
    end

    get 'suma' do
      render 'calculadora'
    end

    post 'suma' do
      cal = Calculadora.new

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = cal.sumar(@primer_operando.to_i, @segundo_operando.to_i)
      render 'calculadora'
    end

  end
end