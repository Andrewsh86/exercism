class Grains

  def self.square n
    2**(n-1)
  end

  def self.total
    (1..64).inject(0) { |sum, n| sum + square(n) }
  end

end
