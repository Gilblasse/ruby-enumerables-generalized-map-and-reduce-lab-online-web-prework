require 'pry'
# Your Code Here

def map (array)
  new_array = [] 
  array.each {|value| new_array << (yield(value))} 
  new_array
end

def reduce (array,starting_point=0)
  total = starting_point
  array.each {|value| total = yield(total,value)}
  total
end