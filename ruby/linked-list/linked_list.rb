class Deque

  def push value
    new_node = Node.new(value)

    @front = new_node if @front.nil?

    if @back.nil?
      @back = new_node
    else
      @back.next = new_node
      new_node.previous = @back
      @back = new_node
    end
  end

  def pop
    value = @back.value
    @back = @back.previous
    if !@back.nil?
      @back.next = nil
    end
    value
  end

  def unshift value
    new_node = Node.new value

    @back = new_node if @back.nil?

    if @front.nil?
      @front = new_node
    else
      @front.previous = new_node
      new_node.next = @front
      @front = new_node
    end
  end

  def shift
    value = @front.value
    @front = @front.next
    if !@front.nil?
      @front.previous = nil
    end
    value
  end

  private
  attr_accessor :front, :back

end


class Node

  attr_accessor :previous, :next, :value

  def initialize(value)
    @value = value
  end

end
