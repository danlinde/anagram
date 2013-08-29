class Anagram
	attr_accessor :words
	
	def initialize(words)
		@anagrams= []
		@words = words
	end

	def sort_word(word)
		word.chars.sort.join
	end

	def compare_sorted_words(base, table_word)
		base == table_word ? true : false
	end

	def find_matching_anagrams(base)
		matches = []
		sorted_base = sort_word(base)
		@words.each do |word|
			matches << word	if sorted_base == sort_word(word)
		end
		matches
	end

	def return_matches

		@words.each do |word|
			matches = find_matching_anagrams(word)
		 	@anagrams << matches
		end 
		 @anagrams
	end

end

words = %w(mary army listen silent banana)
anagrams = Anagram.new(words)
print anagrams.return_matches

