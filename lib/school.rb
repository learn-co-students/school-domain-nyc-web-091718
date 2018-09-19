require 'pry'

class School

  attr_accessor :roster , :name


  def initialize(name)

    @name = name
    @roster = {}

  end

  def add_student(student_name, grade)
    if roster.has_key?(grade)
    roster[grade] << student_name
  else
    roster[grade] = []
    roster[grade] << student_name
    #{"new_key"=>["new_value_for_value_array"]}

  end
end

  def grade(num)
    roster[num]

  end

  def sort
    new_hash = {}
  roster.each { |key , value|
    new_hash[key] = value.sort }

    new_hash
  end



end
