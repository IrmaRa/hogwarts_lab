require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/student.rb')

# INDEX - READ  
get '/students' do 
  @students = Student.all()
  erb(:index)
end 

# NEW - CREATE  
get '/students/new' do
  @houses = House.all()
  erb(:new)
end 

#CREATE - CREATE
post '/students' do
  @students = Student.new(params)
  @students.save()
  redirect '/students'
end

