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
      render 'calculadora_suma'
    end

    get 'resta' do
      render 'calculadora_resta'
    end

    get 'multiplicacion' do
      render 'calculadora_multiplicacion'
    end

    get 'division' do
      render 'calculadora_division'
    end


    post 'suma' do
      cal = Calculadora.new

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = cal.sumar(@primer_operando.to_i, @segundo_operando.to_i)
      render 'calculadora_suma'
    end

    post 'resta' do
      cal = Calculadora.new

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = cal.restar(@primer_operando.to_i, @segundo_operando.to_i)
      render 'calculadora_resta'
    end

    post 'multiplicacion' do
      cal = Calculadora.new

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = cal.multiplicar(@primer_operando.to_i, @segundo_operando.to_i)
      render 'calculadora_multiplicacion'
    end

    post 'division' do
      cal = Calculadora.new

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = cal.dividir(@primer_operando.to_i, @segundo_operando.to_i)
      render 'calculadora_division'
    end

  end
end