words = []

words = IO.readlines('dictionary.txt')
words.group_by { |element| element.downcase.chars.sort }.values
# The above works great, from what I can tell. Thanks for giving us an 80k word dictionary Justin.
# (Hint: You can just test with a custom made smaller dictionary to make sure this works.)

# Now I have to figure out how to sort this hash to show which key has the most anagrams. TO GOOGLE!





# This ended up not being as useful... When I tried to use words.group_by I was getting
# problems with trying to call .downcase and .chars on an array? I found the above to be much easier.
##########
# File.readlines('dictionary.txt').each do |line|
# 	words << line.split(" ")
# end
#
# words.group_by { |element| element.downcase.chars.sort }.values
##########