class School
  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grades)  #why does order matter?
    if !@roster[grades]
      @roster[grades] = [student]
    else
      @roster[grades] << student
    end
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grades, students|
       sorted_roster[grades] = students.sort
    end
    sorted_roster
  end

end
