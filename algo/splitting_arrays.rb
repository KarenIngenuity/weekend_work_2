# Complete the method called split_array, which has two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)
  new_array = []
  first_index = 0
  new_array << array[0..array_size - 1]
  until first_index + array_size - 1 == array.index(array.last)
    first_index = first_index + array_size
    new_array << array[first_index..(first_index + array_size - 1)]
  end
  return new_array
end

# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end