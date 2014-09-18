
class Start
	def setup
		grid = []
		alphabet = *('A'..'Z')
		i = 0

		puts "How many rows would you like?"
		rows = gets.chomp
		puts "How many columns would you like?"
		columns = gets.chomp

		rows.to_i.times do
			row_array = []
			(1..columns.to_i).each do |column|
				row_array << "#{alphabet[i]}#{[column]}"
			end
			grid << row_array
			i += 1
		end
	end
end

class Player

	attr_accessor :health, :name

	def initialize(opts = {})
		@health = opts[:health] || 50
		@name = opts[:name] || 'Neill'
	end
end

class Villain

	attr_accessor :health, :max_attack

	def initialize(opts = {})
		@health = opts[:health] || 20
		@max_attack = opts[:max_attack] || 10
	end

	def attack
		puts rand(1..@max_attack)
	end
end


