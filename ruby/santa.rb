class Santa
attr_reader :age, :ethnicity
attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "that was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
      @reindeer_ranking.delete(name)
      @reindeer_ranking << name
  end

end


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas

Saint_nick = Santa.new("male", "white")
Saint_nick.speak
Saint_nick.eat_milk_and_cookies("Snickerdoodle")
p Saint_nick.gender= "unicorn latte female"
p Saint_nick.get_mad_at("Rudolph")
p Saint_nick.celebrate_birthday
p Saint_nick.age
p Saint_nick.ethnicity
p Saint_nick.gender


#attr_reader - readable :name, :location in place of def gender @gender end
#attr_accessor - readable and write-able
#attr_writer - write-able  in place of def @gender = new_gender
