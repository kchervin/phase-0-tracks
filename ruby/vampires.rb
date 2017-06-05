puts "What is your name?"
user_name = gets.chomp

puts "How old are you?"
stated_age = gets.chomp.to_i

puts "What year were you born?"
birthYear = gets.chomp.to_i

calculated_age = (2017 - birthYear)
actual_age = stated_age == calculated_age
wrong_age = stated_age != calculated_age

puts "do you like garlic? (y/n)"
input = gets.chomp

if input == "y"
  likes_garlic = true
else
  likes_garlic = false
end

puts "Do you want insurance? (y/n)"
input = gets.chomp

if input == "y"
  wants_insurance = true
else
  wants_insurance = false
end

case
when user_name == "dracula"

    result = "definitely a vampire"

when user_name == "tufang"

    result = "definitely a vampire"

when (likes_garlic || wants_insurance) && actual_age

    result = "probably not a vampire"

when (wants_insurance != likes_garlic) && wrong_age

  result = "probably a vampire"

when (wants_insurance == likes_garlic) && likes_garlic = false && wrong_age

  result = "almost certainly a vampire"

else
   result = "inconclusive"
end

puts "results = #{result}!!"