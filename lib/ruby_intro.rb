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
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
