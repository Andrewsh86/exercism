require 'prime'

class PrimeFactors

  def self.for n
    factors = []
    grouped_factors = Prime.prime_division n
    grouped_factors.each do |group|
      group.last.times { factors << group.first}
    end
    factors
  end

end
