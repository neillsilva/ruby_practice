ar = [1,2,3,4]
v1 = [1,2,3,4]
v2 = ["a", "b", "c", "d"]

puts ar.map { |a| a+3 }

ar.each do |num|
	puts num += 3
end

# Print all capital letters
puts ('A'..'Z').each { |letter| puts letter }

# Cross Product Arrays
def cross_product v1, v2
	out = []
	v1.each do | i |
		v2.each do | j |
			out << ( i + j ) 
		end
	end
	out 
end

#jubrad
a = [7,8,9,10]
(0..a.length-1).each do |index|
	a[index] += 3
end
