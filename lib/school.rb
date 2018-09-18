require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
    # binding.pry
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      roster[grade] = students.sort
    end
  end
end
