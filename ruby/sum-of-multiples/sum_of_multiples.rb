require 'pry'

class SumOfMultiples

  def initialize *factors
    @factors = factors
  end

  def to num
    multiples = (1...num).select do |n|
      @factors.any? do |factor|
        (n % factor).zero?
      end
    end
    multiples.inject(0) { |sum, n| sum + n}
  end

end
