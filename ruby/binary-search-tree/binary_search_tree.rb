class Bst
  VERSION = 1

  attr_reader :data

  def initialize(value=nil)
    @data = value
  end

  def left
    @left ||= Bst.new
  end

  def right
    @right ||= Bst.new
  end

  def insert value
    if data.nil?
      @data = value
    elsif value <= data
      left.insert(value)
    else
      right.insert(value)
    end
  end

  def each &block
    return enum_for(:each) unless block_given?
    left.each &block if @left
    yield @data
    right.each &block if @right
  end

end
