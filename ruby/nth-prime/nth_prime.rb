class Prime

  def self.nth n
    raise ArgumentError if n < 1
    until primes.size == n do
      primes << next_candidate if is_prime? next_candidate
      @next_candidate += 2
    end
    primes.last
  end

  def self.primes
    @primes ||= [2]
  end

  def self.next_candidate
    @next_candidate ||= 3
  end

  def self.is_prime? num
    primes.any? do |prime|
      return false if (num % prime).zero?
    end
    return true
  end

end
