class Hexadecimal

  attr_reader :hex

  TRANSLATION = "0123456789abcdef".chars.zip((0..15).to_a).to_h

  def initialize hex
    @hex = hex
  end

  def to_decimal
    return 0 if @hex =~ /[^0-9a-f]/i
    reversed_hex = @hex.chars.reverse
    reversed_hex.each_with_index.inject(0) do |sum, (value, index)|
      multiple = TRANSLATION[value]
      sum + multiple * 16 ** index
    end
  end

end
