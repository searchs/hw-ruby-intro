# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  if arr.empty?
    0
  else
    # summed = 0
    # arr.each { |a| summed += a}
    # return summed
    arr.reduce(:+)
  end
end

def max_2_sum(arr)
  maxed = 0
  if arr.empty?
    return 0
  elsif arr.size < 2
    return arr[0]
  else
    arr.sort!.reverse!
    maxed += arr[0].to_i
    maxed += arr[1].to_i
  end
  maxed
end

def sum_to_n?(arr, n)
  status = false
  if arr.empty? or arr.size == 1
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
def hello name
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  y = s.to_s.chr
  p = y.downcase! =~ /([^aeiou]|\W)/
  if p == 0
    true
  else
    false
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.nil?
    raise ArgumentError, 'Provide a Binary number please'
  elsif s.match /([2-9])/
    raise Exception, 'Invalid Binary Number'
  else
    #do some else
  end

end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.nil? or price <= 0
      raise ArgumentError, 'ISBN should be entered and Price must be greate than 0'
    elsif isbn.class != String
      raise ArgumentError, 'ISBN format is wrong'
    else
      @isbn = isbn
      @price = price
    end

    unless price.nil? or price <= 0
      @price = price
    end

  end

  def price
    @price
  end

  def price=(new_price)
    unless new_price.nil? or new_price <= 0
      @price = new_price
    end
  end

  def price_as_string
    "$#{sprintf('%.2f', @price)}"
  end

  def isbn
    @isbn
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

end


