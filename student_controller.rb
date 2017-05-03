require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/student.rb')

# => index - read  

get '/students' do 
  @students = Student.all()
  erb(:index)
end 