class Matrix

  attr_reader :rows
  attr_reader :columns

  def initialize matrix
    pre_rows = matrix.split("\n")
    @rows = pre_rows.map { |row| row.split(' ').map(&:to_i) }
    @columns = @rows.transpose
  end

end
