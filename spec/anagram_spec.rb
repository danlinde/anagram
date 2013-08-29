require_relative '../anagram'
describe Anagram do
let(:anagrams) {Anagram.new(%w(mary army listen silent banana))}

  it 'should take an array as input' do
    words = %w(rats mary tars star banana silent listen tensil)
    expect(Anagram.new(words)).to_not raise_error
  end

  it 'should be able to sort a word\'s letters alphabetically' do
    anagrams.sort_word('tars').should eq 'arst'  
  end

  it 'should be able to compare sorted words' do
    anagrams.compare_sorted_words('tars', 'tars').should eq true
  end

  it 'should be able to compare sorted words' do
    anagrams.compare_sorted_words('tarp', 'tars').should eq false
  end

  it 'should find matching anagrams from a table of words' do
    anagrams.find_matching_anagrams('mary').should eq ["mary","army"]
  end

  it 'should return all matches' do
    anagrams.return_matches.should eq [["mary", "army"], ["listen", "silent"], ["banana"]]   
  end

end



