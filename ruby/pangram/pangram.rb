module BookKeeping
  VERSION = 2
end

class Pangram

  def self.is_pangram? str
    unique_sorted_chars = str.downcase.chars.uniq.sort.join
    alphabet = ('a'..'z').to_a.join
    result = unique_sorted_chars =~ /#{alphabet}/
    !result.nil?
  end

end
