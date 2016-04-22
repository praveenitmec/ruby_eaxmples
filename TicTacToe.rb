require 'byebug'
module ArrayStore
	Array1 = Array.new
end
class Game
	include ArrayStore
	@@winning_lines = [ [0, 4, 8], [3, 4, 5], [1, 4, 7], [2, 4, 6], [0, 1, 2], [0, 3, 6], [6, 7, 8], [2, 5, 8] ]

	attr_accessor :user1, :user2

  def execute_game(user)
  	puts user.name + " Please enters the position between 1 and 9"
		pos = gets.chomp.to_i
		pos = gets.chomp.to_i if check_number(pos)
  	user.poss << pos - 1
  	Array1[pos-1] = user.symbol
  	self.class.display
  	assert_win(user)
  end

	def self.display
		puts "#{Array1[0]||1} | #{Array1[1]||2} | #{Array1[2]||3}"
		puts "--------------"
		puts "#{Array1[3]||4} | #{Array1[4]||5} | #{Array1[5]||6}"
		puts "--------------"
		puts "#{Array1[6]||7} | #{Array1[7]||8} | #{Array1[8]||9}"
	end

	private
	def assert_win(user)
  	if user.poss.length >= 3
       res = check_user_won(user.poss)
       puts user.name + " won the game" if res
       res
  	else
       return false
  	end
  end

  def check_user_won(user_pos_array)
  	user_pos_array.combination(3).any?{ |comb|
  		@@winning_lines.include?(comb.sort)
    }
  end

	def check_number(pos)
		puts "please enter valid  number" if (!pos.is_a?Fixnum) || (pos <=0 || pos > 9)
		puts "The place is Taken please enter again" if Array1[pos-1] != nil
		(!pos.is_a?Fixnum) || (Array1[pos-1] != nil) || (pos <=0 || pos > 9)
	end
end

class User
	attr_accessor :name, :symbol, :poss
	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@poss = []
	end
end

game = Game.new
puts "==============================TIC TAC TOE======================================="
puts "****Create user 1********"
puts "==========>Enter User Name"
name1 = gets.chomp
game.user1 = User.new(name1, "0")
puts "****Create user 1********"
puts "==========>Enter User Name"
name2 = gets.chomp
game.user2 = User.new(name2, "X")
i=0
Game.display

loop do
	i=i+1
	if i <= 9
		if i.odd?
			break if game.execute_game(game.user1)
		else
			break if game.execute_game(game.user2)
		end	
	else
		puts "Game Tied"
		break
	end
end





