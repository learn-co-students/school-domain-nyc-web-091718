class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
    def add_student(student, level)
    roster[level] ||= []
    roster[level] << student
  end
  
  def grade(level)
    roster.detect do |key, value| 
      if key == level
        return value
      end 
    end 
  end 
  
  def sort 
  new = {}
  roster.each do |key, value| 
  new[key] = value.sort 
  end 
  new
end 
end