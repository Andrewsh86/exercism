module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute seq_1, seq_2
    raise ArgumentError if seq_1.length != seq_2.length
    pairs = seq_1.chars.zip(seq_2.chars)
    pairs.count { |pair| pair.first != pair.last}
  end

end
