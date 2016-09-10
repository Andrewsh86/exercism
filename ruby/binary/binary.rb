class Binary

  def initialize bin
    if bin =~ /^[01]+$/
      @bin = bin
    else
      raise ArgumentError
    end
  end

  def to_decimal
    decimal = 0
    rev_bin = @bin.reverse.chars
    rev_bin.each_with_index do |n, index|
      if n == '1'
        decimal += 2**index
      end
    end
    decimal
  end

end

module BookKeeping
  VERSION = 2
end
