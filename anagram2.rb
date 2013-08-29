# input = %w(stars rats silent mary army tars banana listen tensil)

# sorts = input.map {|word| word.chars.sort.join }

# anagram = input.include? {|word| word.chars.sort.join }

# p sorts


# --------------------
anagram = Hash.new

def s_word(word)
	word.chars.sort.join
end

%w(stars tars army mary rats banana).each do |word|
	anagram[s_word(word)] ||= []
	anagram[s_word(word)] << word
end
              

puts anagram.values.inspect



