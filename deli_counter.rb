# Write your code here.
def line(array)
  return puts "The line is currently empty." if array.size == 0
  string = "The line is currently:"
  array.each_with_index {|element, index| string << " #{index + 1}. #{element}"}
  puts string
end

def take_a_number(array, string)
  array << string
  return puts "Welcome, #{string}. You are number 1 in line."if array.size == 1
  array.each_with_index {|element, index| return puts "Welcome, #{string}. You are number #{index + 1} in line." if index + 1 == array.size}
end

def now_serving(array)
  return puts "There is nobody waiting to be served!" if array.size == 0
  name = array.shift()
  puts "Currently serving #{name}."
end