#Solution File

class LinkedList

	def initialize
		@header=nil
	end

	def header(header)
		@header=header
	end

	def add_element(valor)
		temporaryNode=@header
		while(true)
			if (temporaryNode==nil)
				@header=Node.new(valor)
				break
			end
			if (temporaryNode.get_ref==nil)
				temporaryNode.set_ref(Node.new(valor))
				break
			end
			temporaryNode=temporaryNode.get_ref
		end
	end

	def remove_element(valor)
		temporaryNode=@header
		lastNode=@header
		
		while(temporaryNode!=nil)
			if (temporaryNode.get_dato==valor)
				lastNode.set_ref(temporaryNode.get_ref)
				puts "Valor eliminado"
				break
			end
				lastNode=temporaryNode
				temporaryNode=temporaryNode.get_ref
		end
	end


	def print_elements
		temporaryNode=@header
		while(temporaryNode!=nil)
			print temporaryNode.get_dato
			temporaryNode=temporaryNode.get_ref
			if (temporaryNode!=nil)
				print ","
			end
		end
	end

end

class Node

	def initialize(dato, ref=nil)
		@dato=dato
		@ref=ref
	end

	def get_dato
		return @dato
	end

	def get_ref
		return @ref
	end

	def set_ref(ref)
		@ref=ref
	end

end




l=LinkedList.new
		
=begin
		n=0
		printed=false
		lastN=0

	#Codigo con eliminacion de valores

	while(n!=-1&&printed==false)
		t=gets.chomp
		n=t.to_i

		if (t=="eliminar")
			puts "Ya puedes eliminar"
			while (true)
					t=gets.chomp
					n=t.to_i
				if (n!=-1&&t!="eliminar") 
					l.remove_element(n)
					lastN=n
					puts "Elemento eliminado"
					puts t
					break	
				end
			end
		end


		if(n!=-1 && t!="eliminar" && n!=lastN)
			l.add_element(n)
		end

		if (n==-1)
			l.print_elements
			puts"\n"				
			printed=true
			break
		end

	end
=end

#Código de adición e impresión
while(n!=-1)
		t=gets.chomp
		n=t.to_i

		if (n==-1)
			l.print_elements
			puts "\n"
			break
		else
			l.add_element(n)
		end
end
