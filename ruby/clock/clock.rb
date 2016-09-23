class Clock

  attr_reader :hours, :minutes

  def self.at(hours, minutes)
    new(hours, minutes)
  end

  def initialize(hours, minutes)
    hours_from_minutes = minutes / 60
    @hours = (hours + hours_from_minutes) % 24
    @minutes = minutes % 60
    self
  end

  def to_s
    hours_string = @hours.to_s
    minutes_string = @minutes.to_s
    hours_string.prepend('0') if hours_string.length == 1
    minutes_string.prepend('0') if minutes_string.length == 1
    "#{hours_string}:#{minutes_string}"
  end

  def + minutes
    self.class.new(@hours, @minutes + minutes)
  end

  def == clock
    @hours == clock.hours && @minutes == clock.minutes
  end

end

module BookKeeping
  VERSION = 2
end
