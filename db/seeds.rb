require_relative('../models/student')
require_relative('../models/house')
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

house1 = House.new({
  "name" => "Gryffindor",
  "logo_url" => "https://vignette2.wikia.nocookie.net/harrypotter/images/e/ee/Gryffindor_Crest-0.jpg/revision/latest?cb=20160729145529"  
  })
house2 = House.new({
  "name" => "Slytherin",
  "logo_url" => "https://vignette1.wikia.nocookie.net/harrypotter/images/7/72/Ccd53034-c798-452a-8032-f28e06250d8f.jpg/revision/latest?cb=20160729150848"
  })
house3 = House.new({
  "name" => "Ravenclaw",
  "logo_url" => "https://vignette4.wikia.nocookie.net/harrypotter/images/2/28/Download_%284%29.jpg/revision/latest?cb=20160729145945"
  })
house4 = House.new({
  "name" => "Hufflepuff",
  "logo_url" => "https://vignette1.wikia.nocookie.net/harrypotter/images/6/62/Download_%289%29.jpg/revision/latest?cb=20160729145653"
  })
house1.save
house2.save
house3.save
house4.save
binding.pry
nil