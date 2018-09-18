# code here!
class School
  attr_accessor :roster
  attr_reader :name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
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
 