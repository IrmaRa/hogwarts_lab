require_relative('../models/student')

require('pry-byebug')

student1 = Student.new({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 16
  })

student2 = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 17
  })

student1.save
student2.save

binding.pry
nil