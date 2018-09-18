# code here!
require 'pry'
class School

def initialize(name, roster={})
  @name = name
  @roster = roster
end

attr_accessor :roster
attr_reader :name

def add_student(name, grade)
  if roster[grade] == nil
    roster[grade] = []
    roster[grade] << name
  else
    roster[grade] << name
  end
end

def grade(grade)
  roster[grade]
end

def sort
  roster.each do |grade, student|
    roster[grade].sort!
  end
end


end

# binding.pry
