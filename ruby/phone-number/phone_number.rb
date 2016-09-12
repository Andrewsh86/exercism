class PhoneNumber

  def initialize phone_number
    if number_valid? phone_number
      @phone_number = clean_number phone_number
    else
      @phone_number = '0000000000'
    end

  end

  def number
    length_valid?(@phone_number) ? @phone_number : '0000000000'
  end

  def area_code
    @phone_number.slice(0..2)
  end

  def to_s
    "(#{area_code}) #{@phone_number.slice(3..5)}-#{@phone_number.slice(6..9)}"
  end

  private

  def number_valid? phone_number
    phone_number =~ /[a-z]/i ? false : true
  end

  def length_valid? phone_number
    phone_number.length == 10
  end

  def clean_number phone_number
    cleaned_number = phone_number.gsub(/\D/, '')
    if cleaned_number.length == 11 && cleaned_number.start_with?('1')
      cleaned_number = cleaned_number.slice(1..10)
    end
    cleaned_number
  end

end
