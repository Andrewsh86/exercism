class Atbash

  def self.encode message
    clean_message = message.gsub(/\W/, '').downcase
    translated_message = clean_message.chars.map { |char| ENCODINGS[char] }
    translated_message.each_slice(5).map { |sub_string| sub_string << ' '}.join.strip
  end

  private

  ALPHABET = ('a'..'z').to_a
  DIGITS = ('0'..'9').to_a
  ENCODINGS = (ALPHABET + DIGITS).zip(ALPHABET.reverse + DIGITS).to_h

end
