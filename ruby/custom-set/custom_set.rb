class CustomSet
  include Enumerable

  def initialize list
    @list = {}
    add_list list
  end

  def empty?
    @list.keys.empty?
  end

  def member? element
    !@list[element].nil?
  end

  def subset? set
    all? { |key| set.member? key }
  end

  def disjoint? set
    !any? { |element| set.member? element }
  end

  def == set
    subset?(set) && set.subset?(self)
  end

  def add element
    @list[element] = 1
    self
  end

  def intersection set
    inject(CustomSet.new([])) do |intersection_set, element|
      set.member?(element) ? intersection_set.add(element) : intersection_set
    end
  end

  def difference set
    inject(CustomSet.new([])) do |difference_set, element|
      set.member?(element) ? difference_set : difference_set.add(element)
    end
  end

  def union set
    union_set = self.dup
    union_set.add_list set
  end

  def add_list list
    list.each { |element| add(element)}
    self
  end

  def each &block
    @list.keys.each { |key| yield key}
  end

  private
  @list

end

module BookKeeping
  VERSION = 1
end
