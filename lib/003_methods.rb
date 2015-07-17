# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope
def get_grade(school,name)
  school[:students].each { |student|
    if student[:name] == name
      return student[:grade]
    end
  }
end

def update_subject(school,instructor_name,new_subject)
  school[:instructors].each { |instructor|
    if instructor[:name] == instructor_name
        instructor[:subject] = new_subject
    end
  }
end

def add_new_student(school,new_student)
  school[:students].push({:name => new_student})
end

def add_new_key(school,new_key,new_value)
  school[new_key] = new_value
end