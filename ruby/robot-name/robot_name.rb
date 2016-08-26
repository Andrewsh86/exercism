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
    Kernel.srand
    @name = ''
    alphabet = ('A'..'Z').to_a
    2.times {@name << alphabet[rand(26)]}
    3.times {@name << rand(10).to_s}
    if(@@names.find_index(@name))
      reset
    else
      @@names << @name
    end
  end

end
