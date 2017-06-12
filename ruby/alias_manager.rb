#promp user for  name of and swap the first and last name
#change all vowels to the following vowel in the alphabet
#change all consonants to the following consonants in the alpabet.###****
#repeatedly ask for user's name until user types exit.
#when user is done with the program, print a list of all name changes.


valid_input = false
new_hash = {}
user_name = ""
user_alias = ""

def new_name(name)
  name.split.reverse.join(' ')
end

def transform(create)
  vowels = ["a", "e", "i", "o", "u"]
  create = create.split('')
  create_new = create.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
    create_new.join
    user_alias = create_new.join
end
transform(user_name)

until valid_input
  puts "Please enter first and last name, or type quit to leave."
  user_input = gets.chomp.downcase
      if user_input == "quit"
        puts "List of name changes:"
          valid_input = true
        break
      else
      user_alias = new_name(transform(user_input))
        puts "Your spy name is #{user_alias} "
      end
    new_hash[user_input] = user_alias
end


new_hash.each do |key, value|
    puts "If your name was #{key}now it is #{value}."
end



#notes/ reminders to self/questions
## the only way i could find to not have the hash add exit to its list of keys - was to use break.
## i apparently have a habit of typing words, then hitting space, then hitting enter.. so i spent hours trying to figure out why my exit only works sometimes, and I think it is because it is set to "quit" and i type "quit(space)(return)"-- could this be possible?/ identify solution
#.join(' ')<- amount of space between quotes has meaning
#how to capitalize the first letter of each name