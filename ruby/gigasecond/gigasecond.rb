module BookKeeping
  VERSION = 3
end

class Gigasecond
  def self.from day
    day + 1_000_000_000
  end
end
