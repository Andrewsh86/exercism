class Nucleotide

  def self.from_dna dna
    raise ArgumentError unless dna =~ /^[ATCG]*$/
    @histogram = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    dna.chars.each { |nucleotide| @histogram[nucleotide] += 1 }
    self
  end

  def self.count nucleotide
    @histogram[nucleotide]
  end

  def self.histogram
    @histogram
  end

end
