# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
    students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

get '/students/:name' do
  name = students.each do |student|
    student.split(',')
  end

    students = db.execute("select * from students where name=?", [params[:name]])

end


get '/students/:campus' do
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
    response = ""
    students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# get '/students/:name' do
#   student = db.execute("select * from students where name=?", [params[:name]])


get '/contact' do
  "12 Buckleshoe lane"
end

get '/great_job' do
  name = params[:name]
  if name
  "Good Job, #{name}!"
  else
  "Good Job!"
  end
end

get '/add/:number1/:number2' do
 sum = params[:number1].to_i + params[:number2].to_i
 "#{sum}"
end

# write a GET route that retrieves
# a particular student



