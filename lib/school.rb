require 'pry'

class School
  attr_accessor :name, :roster, :grade

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if roster[grade].nil?
      roster[grade]=[name]
    else
      roster[grade]<<name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, array|
      array.sort!
    end
  end
end

#binding.pry
