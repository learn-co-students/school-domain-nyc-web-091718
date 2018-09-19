class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(students, grades)
    if !@roster[grades]
      @roster[grades] = [students]
      else
        @roster[grades] << students
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grades, students|
      sorted_roster[grades] = students.sort
    end
    sorted_roster
end

end #end of School class
