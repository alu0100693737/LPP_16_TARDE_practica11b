require 'spec_helper'
require 'prct10'

describe Prct10 do
  describe Prct10::Quiz do
		  before :each do
		    @quiz = Prct10::Quiz.new("Cuestionario de PFS 10/12/2011") do 
			  pregunta 'En que anyo Cristobal Colon descubrio America', 
			  :wrong =>'1942',
			  :right =>'1492',
			  :wrong =>'1808',
			  :wrong =>'1914'
			  pregunta  "Noodles", :right => "1 cup"
		    end
		  end
		  context "La clase Quiz contiene los siguientes metodos" do
		      it "tiene que tener un enunciado" do
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





  
  
  
  
  
  
  
  
  
  