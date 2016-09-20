class Hexadecimal

  attr_reader :hex

  TRANSLATION = {
                  '0' => 0, '1' => 1, '2' => 2, '3' => 3,
                  '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                  '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
                  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
                }

  def initialize hex
    @hex = hex
  end

  def to_decimal
    return 0 if @hex =~ /[^0-9a-f]/i
    size = @hex.length
    #I tried something here to try to get this part of the algorithm down
    #to O(n) with a constant factor of 1.  Before, I would have reveresed the array
    #and used the raw index.  This keeps me from having to reverse the array by
    #traversing the array backwards instead.
    (size*-1..-1).inject(0) do |sum, index|
      multiple = TRANSLATION[@hex[index]]
      exponent =  get_exponent(index)
      sum + (multiple * (16**exponent))
    end
  end

  def get_exponent n
    n.abs - 1
  end

end
