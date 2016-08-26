module BookKeeping
  VERSION = 2
end

class Robot
  @@names = []
  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = ''
    alphabet = ('A'..'Z').to_a
    nums = ('0'..'9').to_a
    2.times {@name << alphabet.sample}
    3.times {@name << nums.sample}
    if(@@names.find_index(@name))
      reset
    else
      @@names << @name
    end
  end

end
