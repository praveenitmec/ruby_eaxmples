require 'active_model'
class Baseclass
	attr_accessor :age, :name

	def initialize(args)
		@first_name = args[:fname]
		@last_name = args[:lname]
		@age = args[:age]
		@name = full_name
	end

	def address
		@fullname + "Parent Address"
	end
end

class Name
	attr_accessor :fullname

	def initialize(name)
		@fullname = name
	end
end

class Childclass < Baseclass
	delegate :fullname, to: :name
	def initialize(args)
		super
	end

	def address(block, proc)
		block.call("from address method ")+ proc.call("from address")+ " Parent Address" + yield
	end

	def block_method(procex, lambdaex)
		procex.call("Virat")
		lambdaex.call(3,4)
		yield("Dhoni ")
	end

	def full_name
		Name.new(@first_name+@last_name)
	end

end

bas = Childclass.new({fname: "Praveen", lname: "Kumar", age: 24})
block = lambda { |a| return "Argument "+ a +" For Lambda " }
proc = Proc.new { |a| "Argument "+ a + " For proc"}
puts bas.address(block, proc) { " this from block" }
procex = Proc.new{|param| puts "This "+ param + " is called from call_proc method"}
lambdaex = lambda{ |a,b| puts "Multiplid Value = #{a*b}"}
bas.block_method(procex,lambdaex) do |param|
	puts param + " is called form yield"	
end


	


