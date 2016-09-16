class Bst
  VERSION = 1
  class Node
    attr_reader :data
    attr_reader :left
    attr_reader :right

    def initialize value
      @data = value
      @left = nil
      @right = nil
    end

    def insert value
      if @data.nil?
        @data = value
      elsif value <= @data
        @left.nil? ? @left = Node.new(value) : @left.insert(value)
      else
        @right.nil? ? @right = Node.new(value) : @right.insert(value)
      end
    end

    def each
      yield @left.data if @left
      yield @data
      yield @right.data if @right
    end


  end



  def initialize value
    @root = Node.new(value)
  end

  def data
    @root.data
  end

  def left
    @root.left
  end

  def right
    @root.right
  end

  def insert value
    @root.insert value
  end

  def each &block
    #cannot get last test to pass.
    #submitting to get idea of how to solve.
    left.each &block if left
    yield data
    right.each &block if right
  end

end
