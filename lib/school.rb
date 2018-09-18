class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !!@roster[grade]
      @roster[grade].push(name)
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade].sort!
    end
    Hash[@roster.sort_by {|grade, name| grade}]
  end
end
