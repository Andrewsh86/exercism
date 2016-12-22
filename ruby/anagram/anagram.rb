class Anagram

  def initialize word
    @word = word
    @sorted_word = @word.downcase.chars.sort.join
  end

  def match words
    words.select { |word| word.downcase != @word.downcase && word.downcase.chars.sort.join == @sorted_word}
  end

end
