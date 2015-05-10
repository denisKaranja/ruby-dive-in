module ContactInfo
  attr_accessor :first_name, :last_name, :city, :state, :zip_code

  def fullname
    return @first_name.capitalize() + " " + @last_name.capitalize()
  end

  def location
    csz = @city
    csz += ", #{@state}" if @state
    csz += ", #{@zip_code}" if @zip_code
    return csz
  end
end

class Person
  include ContactInfo	
end

class Teacher < Person
  attr_accessor :lesson_plans
end

class Student < Person
  attr_accessor :books, :grades
end

