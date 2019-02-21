# Write your code here.
def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    array.each_with_index {|element, index| string << " #{index + 1}. #{element}"}
    puts string
  end
end

def take_a_number(array, string)
  array << string
  if array.size == 1
    puts "Welcome, #{string}. You are number 1 in line."
  else
    array.each_with_index do |element, index|
      puts "Welcome, #{string}. You are number #{index + 1} in line." if index + 1 == array.size
    end
  end
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift()
  end
end