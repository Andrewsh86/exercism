class Array

  def keep
    result = []
    each { |element| result << element if yield element }
    result
  end

  def discard
    result = []
    each { |element| result << element unless yield element }
    result
  end

end
