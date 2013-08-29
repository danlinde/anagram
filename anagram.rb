# use ARGV
#get input
input = %w(stars rats silent mary army tars banana listen tensil)
# create container
anagrams = []

# for each word in input, check for anagrams

def sort_word(word)
	word.split(//).sort.join("")
end

input.each do |word| 
	matches=[]
	checker = sort_word(word)
	
	input.each do |comparing_word| 
		checkee = sort_word(comparing_word)
		if checker == checkee
			matches << comparing_word
		end
	end
	anagrams.push(matches)
end

# remove duplicates

single_anagrams = anagrams.uniq

puts single_anagrams.inspect






# end


# anagrams = ARGV.check_anagram {}