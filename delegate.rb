require 'active_model'
class Name
	attr_accessor :fullname

	def initialize(name)
		@fullname = name
	end
end

class Childclass 
	attr_accessor :age, :name
	delegate :fullname, to: :name

	def initialize(args)
		@first_name = args[:fname]
		@last_name = args[:lname]
		@age = args[:age]
		@name = full_name
	end

	def full_name
		Name.new(@first_name+@last_name)
	end

end

bas = Childclass.new({fname: "Praveen", lname: "Kumar", age: 24})
puts bas.fullname


