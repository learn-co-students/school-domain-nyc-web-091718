class School
  attr_accessor :roster

  def initialize (name)
    @school_name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, student_array|
      student_array.sort!
    end
  end

end
