class School

  def initialize
    @dictionary = Hash.new
  end

  def students grade
    instantiate_grade grade
    @dictionary[grade].sort
  end

  def add student, grade
    instantiate_grade grade
    @dictionary[grade] = @dictionary[grade].push(student)
  end

  def students_by_grade
    output = []
    @dictionary.keys.sort.each do |key|
      output << { grade: key, students: students(key)}
    end
    output
  end

  private
  @dictionary

  def instantiate_grade grade
    @dictionary[grade] = [] unless @dictionary[grade]
  end

end

module BookKeeping
  VERSION = 3
end
