# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
      0
  else
      arr.reduce(:+)
  end
end

def max_2_sum arr
  maxed = 0
  if arr.empty?
      return 0
      elsif arr.size == 1
      return arr[0]
  else
      arr.sort!.reverse!
      maxed += arr[0]
      maxed += arr[1]
  end
   maxed
end

def sum_to_n?(arr, n)
  status = false
  if arr.empty?
      false
      elsif  arr.size == 1
      false
  else
combo = arr.combination(2).to_a
combo.each { |c|
    if c.reduce(:+) == n
        status = true
        break
    else
        status = false
    end
}
 status
      
  end
  
  
end

# Part 2

def hello(name)
"Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end