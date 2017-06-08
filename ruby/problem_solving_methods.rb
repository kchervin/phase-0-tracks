
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

