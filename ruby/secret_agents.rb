# 4.6 PAIR PROGRAMING -- ENCRYPTION PROGRAM

####### ENCRYPT ##########
# 1. Determine string length
# 2. Zero-index string
# 3. Use .next on string

def encrypt(string)
  index=0
  new_string=""
  while index < string.length
    new_string += string[index].next[0]
    index += 1
  end
  new_string.gsub("!", " ")
end

# encrypt("abc")
# encrypt("zed")

####### DECRYPT ############
# 1. Determine string length
# 2. Zero-index alphabet for refrence point
# 3. Use negative index on alphabet to determine string


def decrypt(string)
  index=0
  alphabet="abcdefghijklmnopqrstuvwxyz"
  new_string=""
  while index < string.length
    new_string += alphabet[alphabet.index(string[index])-1]
    index += 1
  end
  new_string.gsub("!", " ")
end

# decrypt("bcd")
# decrypt("afe")

####### DRIVER CODE ############

# puts decrypt(encrypt("swordfish"))

#ask secret agent whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password? (decrypt/encrypt)"
preference=gets.chomp
preference.downcase!
  while preference != "decrypt" && preference != "encrypt"
    puts "Invalid value. Please enter decrypt or encrypt."
    preference=gets.chomp
  end

#ask for a password
puts "Please provide a password"
password=gets.chomp

# conduct requested operation, print the result to the screen, and exit
if preference == "encrypt"
  new_password= encrypt(password)
else
  new_password= decrypt(password)
end

puts "Your #{preference} password for #{password} is #{new_password}."

#exit
puts "Thank you for your service. Good-Bye!"
