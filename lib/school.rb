# code here
require 'pry'
class School

attr_accessor :roster


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(new_student, grade)
  @grade = grade
  if @roster.has_key?(grade)
    @new_student = new_student
    @roster[@grade] << @new_student
  else
    @new_student = []
    @new_student << new_student
    @roster[@grade] = @new_student
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster = {}
    @roster.each do |grade_num, students|
        roster[grade_num] = students.sort
    end
    roster
  end



end
