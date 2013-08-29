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
		sorted_base = sort_word(base)
		@words.select { |word| sorted_base == sort_word(word) }
	end

	def return_matches
		@words.map { |word| find_matching_anagrams(word)}
	end

end

words = %w(mary army listen silent banana)
anagrams = Anagram.new(words)
p anagrams.return_matches.uniq

