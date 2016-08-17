module BookKeeping
  VERSION = 2
end

class Raindrops

  @@conversions = { 3 => 'Pling',
                    5 => 'Plang',
                    7 => 'Plong'}

  def self.convert number
    answer = ''
    @@conversions.keys.each do |factor|
      answer << @@conversions[factor] if (number % factor).zero?
    end
    answer.empty? ? number.to_s : answer
  end
end
