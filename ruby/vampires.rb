puts "how many employees will be processed?"
employee_count = gets.chomp.to_i
survey_count = 0

while survey_count < employee_count
survey_count += 1

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

puts "do you have any allergies? please hit return after each allergy listed.  When complete, type: done followed by the return key."
user_allergy = ""
while user_allergy != "done"
user_allergy = gets.chomp
if user_allergy == "sunshine"
  result = "probably a vampire"
  break
end
end

if user_allergy == "done"
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
end

puts "results = #{result}!!"

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
