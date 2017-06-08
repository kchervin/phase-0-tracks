
def method(array, int)
  index = 0
  until index == array.length
    if int == array[index]
      finding = index
      break
    else
      finding = nil
      index += 1
    end
  end
  # "index for #{int} is #{final}"
  finding
end
array = [1, 7, 11, 15, 42]
p method(array, 4)
p method(array, 1)
p method(array, 42)

def method(array, int)
  index = 0
  new_finding = nil
array.each do
    if int == array[index]
      new_finding = index
    end
      index += 1
  end
  new_finding
end

try_array = [1, 7, 11, 15, 42]
p method(try_array, 4)
p method(try_array, 1)
p method(try_array, 42)

def fibonacci_method(num_terms)
  fib_numbers = [0,1]
  num1 = 0
  num2 = 1
  until fib_numbers.length == num_terms
    result = num1 + num2
    fib_numbers << result
    num1 = num2
    num2 = result
  end
  fib_numbers
end

p fibonacci_method(100)[-1] ==218922995834555169026

#release 2:
#iterate through an array for index 1 - last index in the array.
#Set up a loop to compare the current index item to the index item prior.  if current index item is less than prior index item, swap the item.  Then, compare to each item prior, until current index item is greater than prior index item. Otherwise, continue to iterate through array.
#return new array

def insertion_sort(a)
  for i in 1...(a.length)

    while i>0
      if a[i] < a[i-1]
        temp = a[i-1]
        a[i-1] = a[i]
        a[i] = temp
      else
        break
      end
      i = i-1
    end
  end
  return a
end


array = [27, 16, 1, 15, 42]
p insertion_sort(array)