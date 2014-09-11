class Dog
	def self.bark
		class_eval do
			puts "Bark like a #{self.name}"
		end
	end
end

class DogFactory < Dog
	def self.create_class(class_name)	
		Class.new(Dog)
	end

	def method_missing
		super
	end
end
