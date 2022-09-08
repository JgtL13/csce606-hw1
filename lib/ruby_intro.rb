# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  for i in arr
    sum = sum + i
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  for i in arr.max(2)
    sum = sum + i
  end
  return sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  require 'set'
  set = Set.new
  for i in arr
    if set.include?(number - i)
      return true
    else
      set.add(i)
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name 
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string[0] =~ /[[:alpha:]]/ and string[0] =~ /[^AEIOUaeiou]/
    return true
  end
  return false
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  # Binary will be multiple of 4 if it is ending in "00"
  if string !~ /[^01]/ and (string == "0" or string.end_with?("00"))
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(init_isbn, init_price)
    raise ArgumentError.new(
      "ISBN is an empty string!"
    ) if init_isbn.empty?
    raise ArgumentError.new(
      "Price should be larger than 0!"
    ) if init_price <= 0
    @isbn = init_isbn
    @price = init_price
  end

  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    return "$%0.2f" % [@price]
  end
end
