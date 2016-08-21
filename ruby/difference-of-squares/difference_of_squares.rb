module BookKeeping
  VERSION = 3
end

class Squares
  attr_reader :num
  def initialize num
    @num = num
  end

  def square_of_sum
    sum = (0..@num).inject(:+)
    sum**2
  end

  def sum_of_squares
    squares = (0..@num).map do |x|
      x**2
    end
    squares.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
