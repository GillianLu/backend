#create your own object with attributes and methods
#student object
class Student
  attr_accessor :full_name, :year, :course, :university
  def initialize(full_name, year, course, university)
    @full_name = full_name
    @year = year
    @course = course
    @university = university
  end

  #student introduction instance method
  def student_introduction
    puts @full_name + ' is a ' + @year + ' student from ' + @university + ' studying ' + @course
   end
end

gillian = Student.new('Gillian Lu','4th', 'BS ITE', 'ADMU')
puts gillian.full_name
gillian.student_introduction
