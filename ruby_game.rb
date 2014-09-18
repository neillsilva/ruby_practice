class Game
	@hero
	@villain
	def initialize
		@hero = Player.new
		@villain = Villain.new
		run_game
	end
	def run_game
		puts "How many rows would you like?"
		@rows = gets.chomp
		puts "How many columns would you like?"
		@columns = gets.chomp
		puts "What is your players name?"
		@hero.name = gets.strip
		puts "How much health do you want to start with? 50 is the minimum, and 120 is the maximum."
		puts "The more health you have the easier it is to survive."
		@hero.health = gets.strip.to_i
		# Having trouble with > 120
		while @hero.health < 50 
			puts "You must start with between 50 and 120 health. Please enter a number in that range."
			@hero.health = gets.strip.to_i
		end
		puts "Your map is a #{@rows} by #{@columns} grid. Where do you want to start?"
		puts "Enter a co-ordinate as AxB, E.G. 1x2 3x3 5x4"
		mapstart = gets.chomp.split('x')
		@startx = mapstart.first.to_i
		@starty = mapstart.last.to_i
		@location = @grid[@startx][@starty]
		puts "Where do you want to end? Same format."
		mapend = gets.chomp.split('x')
		@destination = @grid[@endx][@endy]
		@endx = mapend.first.to_i
		@endy = mapend.last.to_i
		puts "And lastly, how many enemies do you want on the map?"
		@enemy_count = gets.chomp

	##### Sets up the map.
		Grid.make_grid
	#####
	#	main_game

	end
end

class Grid
	def make_grid
		alphabet = *('A'..'Z')
		i = 0
		@grid = []

		@rows.to_i.times do
			row_array = []
			(1..@columns.to_i).each do |column|
				row_array << "#{alphabet[i]}#{[column]}"
			end
			@grid << row_array
			i += 1
		end
	end
end

#def main_game
#	if @location = @destination
#		puts "You won the game!"
#	elsif @location = @grid[@rows+1][@columns+1]
#		puts "You have fallen off the map and died of Dysentry."
#	end
#end

class Player

	attr_accessor :health, :name

	def initialize(opts = {})
		@health = opts[:health] || 50
		@name = opts[:name] || 'Player1'
	end
end

class Villain

	attr_accessor :health, :max_attack

	def initialize(opts = {})
		@health = opts[:health] || 20
		@max_attack = opts[:max_attack] || 10
	end

	def attack
		#@hero.health - rand(1..@max_attack)
	end
end


