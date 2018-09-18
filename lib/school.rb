require 'pry'

class School

attr_accessor :roster

def initialize(name)
  @roster = {}
end

def add_student(student,grade)
  if(@roster.keys.include?(grade))
    @roster[grade] << student
  else
  @roster[grade] = [student]
  end
end

def grade(grade_num)
  @roster[grade_num]
end

def sort()
  #binding.pry
  @roster.each do |grade,students|
    @roster[grade] = students.sort
  end
end

end #end of class
