module Prct10
  class Quiz
    attr_accessor :title, :questions, :counter
    
    RIGHT = :right
    WRONG = :wrong
    
    def initialize(title = "", &b) #titulo y bloque con question(cadena) y hash
      self.title = title
      self.questions = []
      @counter = 0
      
      if block_given?  
	if block.arity == 1
	  yield self
	else
	  instance_eval &b 
	end
      end
    end
    
    
    def to_s
      output = "#{self.title} \n\n"
      output << "#{self.questions.join("\n")+ "Su Respuesta"}"
      output
    end
   
    def run
      counter = 0
      puts self.name+ "\n\n"
      self.questions.each { |q| counter +=1}
      puts "#{counter} respuestas correctas de un total de #{questions.size}."
    end
    
    def right
       @counter +=1
       [@counter, RIGHT]
    end
    
    def wrong
      @counter +=1
      [@counter, WRONG]
    end
    
  end
end

