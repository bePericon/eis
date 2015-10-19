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

    get 'suma' do
      render 'calculadora_suma'
    end

    get 'resta' do
      render 'calculadora_resta'
    end

    get 'promedio' do
      render 'calculadora_promedio'
    end

    get 'multiplicacion' do
      render 'calculadora_multiplicacion'
    end

    get 'division' do
      render 'calculadora_division'
    end


    post 'suma' do

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = CALCULADORA.sumar(@primer_operando.to_i, @segundo_operando.to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render 'calculadora_suma'
    end

    post 'resta' do

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = CALCULADORA.restar(@primer_operando.to_i, @segundo_operando.to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render 'calculadora_resta'
    end

    post 'promedio' do

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = CALCULADORA.promedio(@primer_operando.to_i, @segundo_operando.to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render 'calculadora_promedio'
    end

    post 'multiplicacion' do

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = CALCULADORA.multiplicar(@primer_operando.to_i, @segundo_operando.to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render 'calculadora_multiplicacion'
    end

    post 'division' do

      session[:primer_operando] = params[:primer_operando]
      session[:segundo_operando] = params[:segundo_operando]
      @primer_operando = session[:primer_operando]
      @segundo_operando = session[:segundo_operando]

      @resultado = CALCULADORA.dividir(@primer_operando.to_i, @segundo_operando.to_i)
      @operaciones_realizadas = CALCULADORA.memoria
      render 'calculadora_division'
    end

    #get 'resetear/:name' do
    #  CALCULADORA.resetear_memoria
    #  if ("#{params[:name]}" == "suma")
    #    render 'calculadora_suma'
    #  end
    #end

  end
end