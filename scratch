# code here!
class School
  attr_accessor :roster
  attr_reader :name
#  roster = {}
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
  
end 
 