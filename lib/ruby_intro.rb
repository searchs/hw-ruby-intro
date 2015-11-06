# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  if arr.empty?
    0
  else
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
  th = ["a", "e", "i", "o", "u"]
  alph = ('a'..'z').to_a
  conso = alph - th
  if s.nil? || s.size == 0 || s.empty?
      return false
  elsif conso.include?(s.chr.downcase)
    return true
  else
    return false
  end

end

def binary_multiple_of_4? s
  if s.nil? or s.empty? 
    return false
  elsif s =~ /([^01])/
    return false
  elsif s.to_i(2) % 4 == 0
    return true
  end
end
  


# Part 3

class BookInStock
  
  def initialize(isbn, price)
    if isbn.nil? or price <= 0 or isbn.empty?
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


