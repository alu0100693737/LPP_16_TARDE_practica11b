module Prct10
  class Question
    attr_accessor :name, :opciones
    
    def initialize(name1, options)
      @name = name1
      @opciones = options
    end
  
    def to_s #mostramos pregunta y opciones
	cadena = ""
	cadena << name << "\n"
	n = 1
	cadena << "  -> #{opciones[:right]}\n"
	n+=1
	#for int i = i<counter
	opciones.each_with_index do |op|
	  cadena << "  -> #{op}\n"
	  n+=1
	end
	cadena
    end
  end
  
  class Quiz
    attr_accessor :title, :questions,:counter
    @@counter=0
    
    def initialize(title = "", &block) #titulo y bloque con question(cadena) y hash
      self.title = title
      self.questions = []
    
      
      if block_given?  
	if block.arity == 1
	  yield 
	else
	  instance_eval &block 
	end
      end
    end
   
    def to_s
      output = title
      output << "\n#{'*' * title.size}\n\n"
      questions.each_with_index do |pregunta, contador|
	output << "#{contador+1}) #{pregunta}\n"
      end 
# 	output = "#{self.title} \n\n"
#       output << "#{self.questions.join("\n")+ "Su Respuesta"}"
      output
    end
   
    def pregunta(name1, options = {})
      pregunta = Question.new(name1, options)
      questions << pregunta
      
    #pregunta << " (#{options[:wrong]})" if options[:wrong]
    end
    def contador
      @@counter+=1
    end
    def wrong #(option)
      self.contador
      
    
     "wrong#{@counter} :"
    end
  end
end




    

