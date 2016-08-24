module BookKeeping
  VERSION = 2
end

class Pangram

  def self.is_pangram? str
    down_cased = str.downcase.chars.uniq.sort.join
    alphabet = ('a'..'z').to_a.join
    result = down_cased =~ /#{alphabet}/
    !result.nil?
  end

end
