class PerfectNumber

  def self.classify n
    raise RuntimeError if n <= 0
    sum_of_factors = factors(n).inject(&:+)
    if (sum_of_factors == n)
      return 'perfect'
    elsif (sum_of_factors > n)
      return 'abundant'
    else
      return 'deficient'
    end
  end

  def self.factors n
    1.upto(n/2).inject([]) do |factors, candidate|
      if (n % candidate).zero?
        factors << candidate
        factors << (n / candidate) unless candidate == 1
      end
      factors
    end.uniq
  end

end

module BookKeeping
  VERSION = 1
end
