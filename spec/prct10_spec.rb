require 'spec_helper'
require 'prct10'

describe Prct10 do
  describe Prct10::Quiz do
		  before :each do
		@quiz = Prct10::Quiz.new("Cuestionario de PFS 10/12/2011"){
			  pregunta 'En que anyo Cristobal Colon descubrio America', 
			    :right =>'1492',
		            wrong => '1942',
			    wrong => '1808',
			    wrong => '1914'
		
			  a = rand(10)
			  b = rand(10)
			  pregunta "#{a}+#{b} = ",
			    :right =>"#{a + b}",   
			    wrong =>'44',
			    wrong =>"#{a + b + 2}",
			    wrong =>"#{a + b - 2}"
			  pregunta 'En Ruby los bloque son objetos que continen codigo',
			    :right =>'Falso',
			    wrong => 'Cierto'
			  pregunta 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
			    :right => '1',
			    wrong => '2',
			    wrong => 'muchos',
			    wrong =>'los que defina el usuario'
# 			 
		  }
		  end
		  context "La clase Quiz contiene los siguientes metodos" do
		      it "metodo to_s" do
			expect(@quiz).to respond_to :to_s
		      end
		      it "metodo pregunta" do
			expect(@quiz.to_s).to match('Cuantos argumentos de tipo bloque puede recibir un metodo')
		      end
		  end
  end
end

# if __FILE__ == $0
# quiz = Quiz.new("Cuestionario de PFS 10/12/2011") {
# questions 'En que anyo Cristobal Colon descubrio America',
# wrong =>'1942',
# right =>'1492',
# wrong =>'1808',
# wrong =>'1914'
# 
# a = rand(10)
# b = rand(10)
# questions   "#{a}+#{b} = ",
# wrong =>"44",
# wrong =>"#{a + b + 2}",
# right =>"#{a + b}",
# wrong =>"#{a + b - 2}"
# }
# 
# 
# puts quiz
# puts "************************"
# quiz.run
# end

# 
# 	@preg3=Preguntas::EleccionSimple.new(
#  				      :pregunta => "salida de :
#  				      class Array \n 
#  				      def say_hi \n
#  				      HEY! 
#  				      end
#  				      end \n
#  				      p[1,, bob].say_hi", 
#  				      :op_correcta => "Ninguna de las anteriores",
#  				      :op_incorrecta => ['1', 'bob', 'HEY!'])
# 
# 
# 
# quiz = Prct10::Quiz.new("Cuestionario de LPP 05/12/2014") {
# pregunta 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
# :right => '1',
# :wrong => []
# wrong '2'
# wrong 'muchos'
# wrong 'los que defina el usuario'
# 
# pregunta 'En Ruby los bloque son objetos que continen codigo',
# :right=>'Falso',
# :wrong => []
# wrong 'Cierto'
# 
# }
# 
#   
#   
#   
#   
#   
#   
  
  
  
  