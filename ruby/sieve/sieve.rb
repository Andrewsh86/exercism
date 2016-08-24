class Sieve

  def initialize num
    @num = num
  end

  def primes
    return [] if @num < 2
    list = (2..@num).to_a
    prime_arr = []
    until list.empty? do
      prime_arr << list.shift
      list.map! do |x|
        (x % prime_arr.last).zero? ? nil : x
      end
      list.compact!
    end
    prime_arr
  end

end
