class Translation
CHEM_MAP =   {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC'	=> 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG'	=> 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG'	=> 'Serine',
    'UAU' => 'Tyrosine',
    'UAC'	=> 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC'	=> 'Cysteine',
    'UGG'	=> 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA'	=> 'STOP'
  }


  def self.of_codon codon
    CHEM_MAP[codon.upcase]
  end

  def self.of_rna rna
    codons = rna.chars.each_slice(3).map(&:join)
    raise InvalidCodonError unless codons.all? { |codon| CHEM_MAP[codon]}
    codons.inject([]) do |chems, codon|
      chem = of_codon(codon)
      return chems if chem == 'STOP'
      chems << chem
    end
  end

end

class InvalidCodonError < Exception

end
