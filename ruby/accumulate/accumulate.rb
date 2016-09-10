module Enumerable

  def accumulate &block
    duplicate = self.dup
    duplicate.each_with_index do |n, index|
      duplicate[index] = yield n
    end
    duplicate
  end

end
