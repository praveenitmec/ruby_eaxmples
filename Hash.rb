
class HashEx
	def initialize(params)
		@hash  = Hash.try_convert(params)
		@hash.default = "Sorry Name not found"
		@hash2 = params.to_hash
		@hash4 = @hash2
		@hash3 = {"Harsha": "Bad Boy"}
	end

	def method_missing(sym, *args, &block)
    puts "Hare Yaar There is No Method"
  end

	def check_hash
		puts "----Types of equating data in Hash = check_hash--------"
		puts @hash.object_id
		puts @hash2.object_id
		puts @hash4.object_id
		puts @hash3.object_id
		puts @hash2 == @hash
		puts @hash2.eql?@hash3
		puts @hash2.equal?@hash4
		puts @hash2 === @hash3
	end

	def find_in_hash(key)
		puts "----Types of finding data in Hash = find_in_hash--------"
		puts @hash.any?{|attr| attr[0] == key} #return true
		puts @hash.assoc(key) # return array =["praveen","Very Bad Boy"]
		puts @hash.assoc("akjschk") #return nil 
	end

	def check_default(key)
		puts "----Types of check deafult value is return if no key = check_default--------"
		puts @hash[key] #return "Sorry Name not found"
	end

	def types_of_delete(key)
		puts "----Types of delete data in Hash = types_of_delete--------"
		@hash.delete(key) # Rajini will be removed
		@hash.delete_if{|key,value| value.include?"cricket"} # sachin will bw delete
    puts @hash # without rajini and sachin
    @hash[:sachin] = "cricket"
	end

	def types_of_adding_data
		puts "----Types of adding data in Hash = types_of_adding_data--------"
		@hash.merge!({"Rajini": "Hero"})
		@hash[:sachin] = "cricket"
		@hash.store("praveen", "Very Bad Boy")
		puts @hash
	end

	def fetch_functionality
		puts "----fetching functionality--------"
		puts @hash.fetch("praveen") # with one arg if key found return data else error
		puts @hash.fetch("abc","default") # with two second is default if key not found default will return
		@hash.fetch("praveen"){ |key| puts "Key Not found" } 
		@hash.fetch("hdgwj"){ |key| puts key+" Key Not found" }  #return key not found
	end

	def has_properties
		puts "----------------has_key? and has_value? Properties---------"
		puts @hash.has_key?"praveen"
		puts @hash.has_value?"cricket"
		puts @hash.include?"praveen"
		puts @hash.member?"praveen"
	end

	def miscellaneous
		puts "---------------------Keep_if----------------------"
		puts @hash.keep_if{|key,value| value.include?"cricket"} 
		puts "-----------------------values_at-------------------"
		types_of_adding_data
		puts @hash.values_at("praveen",:Harsha)
		puts "--------------------------reject------------------"
		puts @hash.reject{|key,value| value.include?"cricket"} 
		puts "---------------------------select------------------"
		puts @hash.reject{|key,value| value.include?"cricket"} 
	end
end

hash_obj = HashEx.new({"Harsha": "Bad Boy"})
hash_obj.check_hash
hash_obj.types_of_adding_data
hash_obj.find_in_hash(:Harsha)
hash_obj.check_default("asdas")
hash_obj.fetch_functionality
hash_obj.types_of_delete(:Rajini)
hash_obj.has_properties
hash_obj.miscellaneous


