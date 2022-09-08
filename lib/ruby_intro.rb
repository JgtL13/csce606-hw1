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
  if /[[:alpha:]]/.match(string[0]) and /[^AEIOUaeiou]/.match(string[0])
    return true
  end
  return false
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  # Binary will be multiple of 4 if it is ending in "00"
  if not /[^01]/.match(string) and (string == "0" or string.end_with?("00"))
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
