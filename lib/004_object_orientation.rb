class School

  attr_reader :ranking
  attr_accessor :name 
  attr_accessor :location 
  attr_accessor :students 
  attr_accessor :instructors

  def initialize(name,location,ranking)
    @name = name
    @location = location
    @ranking = ranking
    @students = []
    @instructors = []
    @@school_counter += 1
    @@schools << self
  end

@@schools = []
@@school_counter = 0

  #methods

  def self.all
    @@schools
  end

  def self.count 
    @@school_counter
  end

  def self.reset_all
    @@schools = []
    @@school_counter = 0
  end

  #instance methods

  def add_student(name,grade,semester)
    @students << {:name => name, :grade => grade, :semester =>semester}
  end

  def remove_student(name)
    @students.each {|student|
      if student[:name] == name
        student.delete
      end
      }
  end



end
