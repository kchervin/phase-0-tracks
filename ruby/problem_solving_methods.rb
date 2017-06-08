
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
