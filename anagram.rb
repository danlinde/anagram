class Anagram
	attr_accessor :anagrams
	def initialize(words)
		true
	end

	def sort_word(word)
		word.chars.sort.join
	end

	def compare_sorted_words(base, table_word)
		base == table_word ? true : false
	end

	def find_matching_anagrams(base, words)
		matches = []
		sorted_base = sort_word(base)
		words.each do |word|
			if sorted_base == sort_word(word)
				matches.push(word)
			end
		end
		matches
	end

	def return_matches(words)
		anagrams =[]
		words.each do |word|
		matches = find_matching_anagrams(word, words)
	 	anagrams << matches
		end 
		anagrams.uniq
	end

end

