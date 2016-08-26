module BookKeeping
  VERSION = 2
end


class Fixnum

  ROMAN_NUMERAL_MAP = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman
    roman_numeral = ""
    number = self
    ROMAN_NUMERAL_MAP.each_pair do |arabic_num, roman_num|
      while number >=  arabic_num do
        number -= arabic_num
        roman_numeral << roman_num
      end
    end
    roman_numeral
  end




end
