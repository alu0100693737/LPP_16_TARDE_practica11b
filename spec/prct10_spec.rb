require 'spec_helper'
require 'prct10'

describe Prct10 do

		  before :each do
		    
		  end
		  context "La Pregunta tiene que tener un enunciado" do
		      it "tiene que tener un enunciado" do
		      end
		  end

if __FILE__ == $0
quiz = Quiz.new("Cuestionario de PFS 10/12/2011") {
questions 'En que anyo Cristobal Colon descubrio America',
wrong =>'1942',
right =>'1492',
wrong =>'1808',
wrong =>'1914'

a = rand(10)
b = rand(10)
questions   "#{a}+#{b} = ",
wrong =>"44",
wrong =>"#{a + b + 2}",
right =>"#{a + b}",
wrong =>"#{a + b - 2}"
}


puts quiz
puts "************************"
quiz.run
end




end	

  
  
  
  
  
  
  
  
  
  