class School
  attr_accessor :roster # The roster needs to be mutable.  That's why you use an attr_accessor instead of an attr_reader.
  attr_reader :name
#  def initialize(school_name) 
    def initialize(school_name, roster = {})
    @school_name = school_name
#    @roster = {} 
    @roster = roster 
    #Either of the above ways of initializing the school with an empty roster works: both the commented-out way and the non-commented-out way.
  end 
  
  def roster
    @roster
  end 
  
  # describe "#add_student" do
  #   it 'is able to add a student' do
  #     @school.add_student("AC Slater", 10)
  #     expect(@school.roster).to eq({10 => ["AC Slater"]})
  #   end
  
  
  def add_student(student_name, grade)
    if !@roster[grade]
      @roster[grade] = [student_name]
    else @roster[grade] << student_name
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  # # key order does not matter; this is testing that the students in each respective value are in alphabetical order
  #     expect(@school.sort).to eq({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
  
  def sort
    new_roster = {} 
    @roster.map do |grade, student_array|
       new_roster[grade] = student_array.sort
    end 
    new_roster
  end 
  
end 
 