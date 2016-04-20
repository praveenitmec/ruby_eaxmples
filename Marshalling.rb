class MarshalEx
 def initialize
 	@name = "pr"
 end

 def name
 	@name
 end
end

mar_ex = MarshalEx.new
marshalled_data = Marshal.dump(mar_ex)
unmarshalled_obj = Marshal.load(marshalled_data)
puts unmarshalled_obj.name
