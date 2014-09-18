def alphabet_array(max)
	array = []
	i = 0
	letter = 'A'
	max.times do
		array << letter
		letter = letter.next
	end
	puts array
end