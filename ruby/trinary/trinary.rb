class Trinary

  def initialize tri_num
    @tri_num = tri_num
  end

  def to_decimal
    decimal = 0
    return decimal if @tri_num =~ /[^0-2]/i
    tri_num_ints = @tri_num.chars.map(&:to_i).reverse
    tri_num_ints.each_with_index do |value, index|
      decimal += value * (3**index)
    end
    decimal
  end


  private
  @tri_num

end

module BookKeeping
  VERSION = 1
end
