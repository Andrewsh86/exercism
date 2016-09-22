class Triangle

  RESULT = {
            1 => :equilateral,
            2 => :isosceles,
            3 => :scalene
          }

  def initialize side_1, side_2, side_3
    @sides = [side_1, side_2, side_3]
    raise TriangleError unless is_valid_size? && is_valid_inequality?
  end

  def kind
    RESULT[@sides.uniq.size]
  end

  private

  def is_valid_inequality?
    permutations = @sides.permutation
    permutations.all? { |perm| perm[0] + perm[1] > perm[2] }
  end

  def is_valid_size?
    @sides.all? { |side| side >  0 }
  end

end

class TriangleError < Exception

end
