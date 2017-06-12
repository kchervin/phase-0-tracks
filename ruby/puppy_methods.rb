class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    puts "woof" * number
  end

  def roll_over
    puts "rollover"
  end

  def dog_years(human_years)
    (human_years * 7)
  end

  def play_dead
    puts "*lay down with tongue out*"
  end

  def initialize
    puts "initializing new puppy instance"
  end

end

fido = Puppy.new
fido.roll_over
fido.speak(3)
fido.fetch("ball")
p fido.dog_years(4)
fido.play_dead
#puppy initialize runs when new instance of class is created.. there is no error when initialize is spelled wrong so will not warn you!!

class Cats

def initialize
  puts "Kitten incoming!!"
end

def sing
  puts "meoawoowowowoww"
end

def tp_shred(number_sheets, sheets_shredded)
  puts "#{number_sheets} sheets of tp were shredded!"
  sheets_remaining = number_sheets - sheets_shredded
  puts "there are only #{sheets_remaining}"
end
end

hudson = Cats.new
hudson.sing
hudson.tp_shred(10,8)

count = 0
Cats_array = []
until count == 50
  Cats_array << Cats.new
  count += 1
end

p Cats_array

Cats_array.each do |cat|
  cat.sing
  cat.tp_shred(40, 11)
end