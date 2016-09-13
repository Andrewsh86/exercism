class Anagram

  def initialize word
    @word = word
  end

  def match words
    sorted_word = @word.downcase.chars.sort.join
    words.delete_if { |word| word.downcase == @word.downcase}
    words.select { |word| word.downcase.chars.sort.join == sorted_word}
  end

end
