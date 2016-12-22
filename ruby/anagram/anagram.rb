class Anagram

  def initialize word
    @word = word
    @sorted_word = @word.downcase.chars.sort.join
  end

  def match words
    dup_words = words.dup
    dup_words.select { |word| word != @word && word.downcase.chars.sort.join == @sorted_word}
  end

end
