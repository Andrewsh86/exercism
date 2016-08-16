module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute seq_1, seq_2
    raise ArgumentError if seq_1.length != seq_2.length
    count = 0
    seq_1.chars.each_with_index do |elem, index|
      count += 1 if seq_2[index] != elem
    end
    count
  end

end
