class Prime

  def self.nth n
    raise ArgumentError if n < 1
    nums = (2..1000).to_a
    mark = nums.last
    primes = []
    until primes.size == n do
      if nums.empty?
        nums = (mark..mark + 1000).to_a
        mark = nums.last
        nums.map! do |x|
          primes.any? do |prime|
            (x % prime).zero?
          end ? nil : x
        end
        nums.compact!
      end

      primes << nums.shift
      nums.map! do |x|
        (x % primes.last).zero? ? nil : x
      end
      nums.compact!
    end

    primes.last
  end


end
