require 'singleton'

class SingletonExOne
	attr_accessor :data
	def initialize
		@data = "constant data or data from some file"
	end
  @@singletonex = SingletonExOne.new

	def self.instance
		return @@singletonex
	end

	def get_data
		@data.upcase
	end
  private_class_method :new
end

a = SingletonExOne.instance
b = SingletonExOne.instance
a.data = "Changed by A"
puts b.get_data


class SingletonExTwo
	include Singleton
	attr_accessor :data
	def initialize
		@data = "constant data or data from some file"
	end


	def get_data
		@data.upcase
	end
  private_class_method :new
end

c = SingletonExTwo.instance
d = SingletonExTwo.instance
c.data = "Changed By C"
puts d.get_data
	

	


