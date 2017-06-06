# prompt user for data
# convert user input to appropriate data
# print hash when all questions complete
# ask user if update necessary
# if no - skip
# if yes, what key and what value
# print latest version

client_info = {}

puts "name"
client_info[:name] = gets.chomp

puts "age"
client_info[:age] = gets.chomp.to_i

puts "number of children"
client_info[:kids] = gets.chomp.to_i

puts "decor_theme"
client_info[:theme] = gets.chomp

puts "agree to terms? yes or no"
client_info[:tos] = gets.chomp.downcase
if client_info[:tos] == "yes"
  client_info[:tos] = true
else
  client_info[:tos] = false
end

p client_info

puts "would you like to update any answers?  "
update = gets.chomp.to_sym
if update != :none
  puts "what is updated response?"
  new_value = gets.chomp
  client_info[update] = new_value
end


p client_info


