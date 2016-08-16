module BookKeeping
  VERSION = 4
end

class Complement

  def self.transcribe nucleotide
    dictionary = {'A' => 'U',
                  'G' => 'C',
                  'T' => 'A',
                  'C' => 'G'}
    nucleotide.upcase!
    dictionary[nucleotide]
  end

  def self.of_dna strand
    return '' unless strand =~ /^[AGTC]+$/i
    strand.chars.inject('') do |rna, nucleotide|
      rna + transcribe(nucleotide)
    end
  end
end
