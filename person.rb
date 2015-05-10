require "contact_info_MO.rb"

class Person
  include ContactInfo	
end

class Teacher < Person
  attr_accessor :lesson_plans
end

class Student < Person
  attr_accessor :books, :grades
end

