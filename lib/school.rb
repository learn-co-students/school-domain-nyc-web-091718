require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, year)
    roster[year] ||= []
    roster[year] << name
  end

  def grade(year)
    roster[year]
  end

  def sort
    @roster.map do |year, students|
      students.sort!
    end
    @roster
  end
end
