# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
zombie_apocalypse_supplies.each do |followby|
   print followby + ' * '
end




# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def alphabetize(a)
  for i in 1...(a.length)
  while i>0
    if a[i-1].downcase>a[i].downcase
      temp =a[i]
      a[i]=a[i-1]
      a[i-1]=temp
    else
      break
    end
    i=i-1
  end
end
return a
end
p alphabetize(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def find(array, string)
  result = false
  for item in array
    if item == string
       result = true
    end
  end
  p result
end

find(zombie_apocalypse_supplies,'boots')

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----


def delete(array)
  until array.length ==  5
    array.pop
  end
end

delete(zombie_apocalypse_supplies)
print zombie_apocalypse_supplies





# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

all_supplies = zombie_apocalypse_supplies | other_survivor_supplies
p all_supplies

# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}



# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |name, year|
print "#{name} - #{year} * "
end

extinct_animals.each do |name, year|
puts "#{name} - #{year}"
puts "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----


extinct_animals.each do |animal, year|
    if year >= 2000
      extinct_animals.delete(animal)
    end
end

p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|
   extinct_animals[animal] = (year - 3)

 end

p extinct_animals


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|

  if animal == "Andean Cat"
    puts "andean cat is extinct!"
  elsif animal == "Dodo"
    puts "Dodo is extinct!"
  elsif animal == "Saiga Antelope"
    puts "Saiga Antelope is extinct!"
  end

end



# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
**.shift?
