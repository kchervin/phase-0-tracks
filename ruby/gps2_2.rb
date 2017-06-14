# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create hash
  # turn each item into a key for the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?] print each item with quantity
# output: [hash]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: call list
    # turn new_item into a key, and quantity into a value
    # push to list
    # print list with item name and quantity
# output: return hash with added item and quantity of item

# Method to remove an item from the list
# input: item to be removed from list
# steps: delete an item from the hash (.delete)
# output: return hash without deleted item

# Method to update the quantity of an item
# input: enter item to be updated and quantity of item
# steps: override quantity for selected item
# output: return hash with updated quantity of item

# Method to print a list and make it look pretty
# input: hash of list
# steps: print each key and value in a string to be
      # better formatted
# output: print hash of list  (in a pretty way)



# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create hash
  # turn each item into a key for the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?] print each item with quantity
# output: [hash]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: call list
  # turn new_item into a key, and quantity into a value
  # push to list
  # print list with item name and quantity
# output: return hash with added item and quantity of item

# Method to remove an item from the list
# input: item to be removed from list
# steps: delete an item from the hash (.delete)
# output: return hash without deleted item

# Method to update the quantity of an item
# input: enter item to be updated and quantity of item
# steps: override quantity for selected item
# output: return hash with updated quantity of item

# Method to print a list and make it look pretty
# input: hash of list
# steps: print each key and value in a string to be
  # better formatted
# output: print hash of list (in a pretty way)

#===========================================

def new_list (item)
  hash = {}
  list = item.split(',')
  list.each do |i|
  hash[i] = 1
  end
  p hash
end

x = new_list('carrots,apples,grapes')

def add_item (list,item,quantity)
  list[item] = quantity
  p list
end

add_item(x,'pears',2)
add_item(x,'pears',3)

def delete_item (list,item)
  list.delete(item)
  p list
end

delete_item(x,'pears')


#def new_quantity (list,item,quantity)
#  list[item] = quantity
#  p list
#end
#
#new_quantity(x,'apples',10)

def print_list (list)
  list.each { |item,value| puts "#{item} buy #{value}" }
end

print_list(x)


#refractor// the new quantity method does the same thing as method for adding item - so it was removed.
#removed list.each do and replaced with {} to fit the method into one line- for neater code/shorter code

#reflection
##comments:
#i have been stuggling with pseudocode, and this challenge definitely helped. I didnt realize how helpful pseudocode could be - Having the structure of input and output and steps to accomplish for each section really helped me understanding what needed to be done for the challenge itself.
#using a hash for this challenge was useful because it allowed us to not only create a list of items, but a list of items and the number associated with that particular item.
#a method returns the last expression evaluated every method returns an object, eeven if its just nil.  the return value is not necessarily seen, but can be used by other methods
# you can pass objects into methods - and by passing return values from other methods, you can pass information between arguments.
#this challenge helped me better understand how methods work  - i had a few a-ha! moments.. the hardest part for me is always getting started - whether its writing good pseudocode or the first method of creating the hash