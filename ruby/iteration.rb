# Release 0

def iteration_method
  puts "Block not yet executed."
  name = "Katie"
  3.times { yield(name) }
  puts "Block executed."
end

iteration_method { |name| puts "#{name} This is the block"}

# Release 1

animals = ["penguin", "dolphin", "zebra"]
animal_name = {
  penguin: "Penny",
  dolphin: "Dolly",
  zebra: "Joe"
}

# Iterate using .each for array

puts "Original:"
puts animals

puts ".each method"
animals.each do |animal|
  puts animal.upcase
end

puts "After .each"
puts animals

#Iterate using .map! for array

puts "Original:"
puts animals

puts ".map! method"
animals.map! do |animal|
  puts animal.upcase
  animal.upcase
end

puts "after .map!"
puts animals

# Iterate using .each for hash

puts "Original"
puts animal_name

puts ".each method"
animal_name.each do |animal, animal_name|
  puts "The #{animal}'s name is #{animal_name}"
end

puts "after .each"
puts animal_name

# Release 2

# Question 1
puts "Question 1"
nums1 = [0, 1, 2, 3, 4, 5]
letters1 = {
  a: 0,
  b: 1,
  c: 2,
  d: 3
}

nums1.delete_if {|item| item > 3}

puts nums1

letters1.delete_if {|letter, index| letter > :b}

puts letters1

# Question 2
puts "Question 2"
nums2 = [0, 1, 2, 3, 4, 5]
letters2 = {
  a: 0,
  b: 1,
  c: 2,
  d: 3
}

nums2.keep_if {|item| item > 3}

puts nums2

letters2.keep_if {|letter, index| letter > :b}

puts letters2

# Question 3
puts "Question 3"

nums3 = [0, 1, 2, 3, 4, 5]
letters3 = {
  a: 0,
  b: 1,
  c: 2,
  d: 3
}

puts nums3.find_index {|num| num > 2}

puts letters3.find_index {|letter, index| letter < :b}

# Question 4
puts "Question 4"

nums4 = [0, 1, 2, 3, 4, 5]
letters4 = {
  a: 0,
  b: 1,
  c: 2,
  d: 3
}

puts nums4.drop_while {|item| item < 2}