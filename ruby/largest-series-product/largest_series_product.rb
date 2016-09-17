class Series

  def initialize string
    @series = string
    @series_as_nums = string.chars.map(&:to_i)
  end

  def largest_product n
    raise ArgumentError if @series =~ /\D/
    return 1 if n == 0
    raise ArgumentError if n > @series_as_nums.size
    @series_as_nums.each_cons(n).map { |group| group.inject(&:*)}.max
  end

end

module BookKeeping
  VERSION = 2
end
