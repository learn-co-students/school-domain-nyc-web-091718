# code here!
require 'pry'
class School
attr_accessor :roster, :grade, :student_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
      if roster.keys.include?(grade)
        roster[grade] << student_name
      else
        roster[grade] = [student_name]
      end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each do |grade, students|
      students.sort! # sort! modifies the original array.
    end
  end

end
