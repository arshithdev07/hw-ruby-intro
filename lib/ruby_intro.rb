# When done, submit this entire file to the autograder.

# Part 1

#Method takes an integer array of integers as an input
#Returns the sum of elements in the array
def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

#Method takes an integer array of integers as an input
#Returns the sum of its two largest elements
def max_2_sum arr
  # YOUR CODE HERE
  len = arr.length
  sum = 0
  if len == 1
      sum = arr[0]
  elsif len > 1 
      sorted_arr = arr.sort
      sum = sorted_arr[len-1] + sorted_arr[len-2]
  end
  return sum
end

#Method takes an integer array of integers as an input and an integer,n 
#Return true if the integer input is found in the array else false 
def sum_to_n? arr, n
  # YOUR CODE HERE
  i=0
  while i<arr.length do
      ele = arr.pop
      diff = n - ele
      if arr.member?diff
          return true
      end
      i+=1
  end
  return false
end

# Part 2

#Method takes a string as an input
#Return Hello, {{string value}}
def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end


#Method takes a string as an input
#Returns true if it starts with a consonant else false
def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
        return false
  else
      return true
  end
end

#Method takes a string as an input
#Returns true if the string represents a binary number that is a multiple of 4 else false 
def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /[^01]/.match(s) != nil
      return false
  end
  if s == ''
      return false 
  end
  number = s.to_i(2)
  if number%4 == 0
      return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price
  
  def isbn= (isbn)
      if isbn == ''
          raise ArgumentError.new("ISBN number cannot be empty")
      end
      @isbn = isbn
  end
  
  def price= (price)
      if price <= 0
          raise ArgumentError.new("Price cannot be less than 0")
      end
      @price = price 
  end
  
  def initialize(isbn, price)
      self.isbn = isbn
      self.price = price
  end
  
  #Returns the price of the book formatted with a leading dollar sign 
  def price_as_string
      @price = '%.2f' % @price
      return '$' + @price
  end
end
