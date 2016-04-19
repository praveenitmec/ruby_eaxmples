class Childclass
	attr_accessor :instance_data
	@@class_data = "class_data"
  @class_instance_data = "class_instnace_data"
	def initialize
		@instance_data = "instance_data"
	end

	def get_details
		puts "--------From Instance Method---------"
		puts @instance_data
		puts @@class_data
		puts self.class.class_instance_data
		puts some_instance_data
		puts some_private_instnace_data
		puts self.class.some_class_data
		puts "----------END------------------------"
	end

	def self.get_class_details
		puts "--------From Class Method---------"
		puts Childclass.instance_variable_get(:@instance_data)
		puts @@class_data
		puts @class_instance_data
		puts self.new.some_instance_data
		puts self.some_class_data
		puts some_private_class_data
		puts self.new.send(:some_private_instnace_data)
		puts "----------END------------------------"
	end


	def some_instance_data
		"some_instance_data"
	end

	def self.class_data
		@@class_data
	end

	def self.some_class_data
		"some_class_data"
	end
	class <<self
		attr_accessor :class_instance_data
    private 
		def some_private_class_data
		  "some_private_class_data"
	  end
  end

	private
	def some_private_instnace_data
		"some_private_instnace_data"
	end
end

bas = Childclass.new
puts bas.instance_data
puts Childclass.class_data
puts Childclass.class_instance_data
bas.get_details
Childclass.get_class_details


	


