class Dog
	def self.bark
		class_eval do
			puts "Bark like a #{self.name}"
		end
	end
end

class DogFactory < Dog
	def self.create_class(class_name)	
		klass ||= Object.const_set(class_name.capitalize, Class.new(Dog))
	end

end
