require 'httparty'
require 'json'

class Childclass
	include HTTParty
	base_uri 'https://api.github.com/users'
	def get_details
		response = self.class.get('/defunkt')
		response.body
	end
end

bas = Childclass.new
puts JSON.parse(bas.get_details)["login"]

	


