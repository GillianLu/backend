#with sort assuming 3 values in the array
def gimme(array)
  sorted_array = array.sort
  middle_value = sorted_array.sort[1]

  array.index(middle_value)
end

puts gimme([2, 3, 1])
puts gimme([5, 10, 14])


#without sort
def gimme(array)
  max = array.max
  min = array.min

  array.each_with_index do |value, index|
    return index if value != max && value != min
  end
end

puts gimme([2, 3, 1])
puts gimme([5, 10, 14])
