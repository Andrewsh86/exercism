class Phrase

  def initialize phrase
    @phrase = phrase
  end

  def word_count
    clean_phrase = @phrase.downcase.gsub(',', ' ')
    clean_phrase.gsub!(/[^a-z0-9\s']/i, '')
    words = clean_phrase.split
    dictionary = Hash.new(0)
    words.each do |word|
      if(word =~ /^'.+'$/)
        word = word[1..word.length-2]
      end
      dictionary[word] = dictionary[word] + 1
    end
    dictionary
  end

end

module BookKeeping
  VERSION = 1
end
