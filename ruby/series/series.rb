class Series

  def initialize series
    @series = series.chars.map { |n| n.to_i}
  end

  def slices n
    raise ArgumentError if n > @series.size
    output = []
    @series.each_cons(n) { |group| output << group}
    output
  end

end
