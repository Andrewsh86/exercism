require 'pry'
class Clock

  attr_reader :hours, :minutes

  def at hours, minutes
    hours_from_minutes = minutes / 60
    @hours = (hours + hours_from_minutes) % 24
    @minutes = minutes % 60
  end

  def to_s
    hours_string = @hours.to_s
    minutes_string = @minutes.to_s
    hours_string.prepend('0') if hours_string.length == 1
    minutes_string.prepend('0') if minutes_string.length == 1
    "#{hours_string}:#{minutes_string}"
  end

  def + minutes
    at @hours, @minutes + minutes
  end

  def == clock
    @hours == clock.hours && @minutes == clock.minutes
  end

  alias_method 'new', 'at'

end
