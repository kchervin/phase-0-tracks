require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("solo.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS book(
  id INTEGER PRIMARY KEY,
  title VARCHAR(255),
  stars INT
  )
SQL

db.execute(create_table)

def create_book_shelf(db, title, stars)
  db.execute("INSERT INTO book (title, stars) VALUES (?, ?)", [title, stars])
end

def see_ratings(db)
  puts "your book list:"
 book = db.execute('SELECT * FROM book')
 book.each do |id, title, stars|
  puts " #{title}, #{stars}"
end
end

def update(db, title, stars)
  db.execute("UPDATE book SET stars=? WHERE title=?", [stars, title])
end

def delete(db, title)
  db.execute("DELETE FROM book where title=?", [title])
end

def quit
  puts "goodbye"
end

loop do
puts "please select from the following? 1 = add a title, 2 = view titles, 3 = update, 4 = delete, 5 = quit"
user_input = gets.chomp

if user_input == "1"
  puts "what book would you like to add?"
  title = gets.chomp
  puts "How many stars would you rate this book, on a scale of 1-5?"
  stars = gets.chomp
  create_book_shelf(db, title, stars)

elsif user_input == "2"
  see_ratings(db)

elsif user_input == "3"
  puts "which title would you like to update?"
  title = gets.chomp
  puts "what is new rating?"
  stars = gets.chomp
  update(db, title, stars)

elsif user_input == "4"
  puts "which title would you like to delete?"
  title = gets.chomp
  delete(db, title)

elsif user_input == "5"
  quit
  break
end
end


