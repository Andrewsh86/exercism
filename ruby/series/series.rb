class Series

  def initialize series
    @series = series.chars.map(&:to_i)
  end

  def slices n
    raise ArgumentError if n > @series.size
    @series.each_cons(n).to_a
  end

end
