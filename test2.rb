require 'csv'

f = File.open('transaction.csv')

@data = CSV.parse(f.read)
# row is the array... [1] is the 2nd index in each array
	@data.each do |row|
		puts row[1]
	end

# Does not work!!
#	data.each do |row|
#		row[21].to_i
#	end

def charges(array)
	a = 0
	array.each do |charge|
		a += charge[21].to_i
	end
	return a
end

puts charges @data

