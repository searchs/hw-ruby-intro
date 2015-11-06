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
  y = s.to_s.chr
  p = y.downcase! =~ /([^aeiou]|\W)/
  if p == 0
    true
  else
    false
  end

end

def binary_multiple_of_4? s
  #   nums = 0
  #   arr =[]
  # def pow b, e
  #   ([b] * e).inject(:*)
  # end
  
  if s.nil? or s.empty?
    return false
  elsif s =~ /([^01])/
    return false
  elsif s.to_i(2) != 0 and s.to_i(2) % 4 ==0
    return true
  end
  # q = s.split("")
  # g = q.each { |m|
  
  # arr << m.to_i
  
  # }
# p arr
# if arr.size == 1 and arr[0] == 0
# p "Zero here!"
# end
#   r = arr
#   w = r.size - 1
# if r.size == 1 and r[0] == 1
#   return false
# else
#   r.each {|k|
#     nums += k[0].to_i * pow(2,w).to_i
#     w -= 1
#   }
# end
end
  
  
# if nums != 0  and nums % 2 == 0 
#   p nums
# p "Divisible by 2!"
#   if nums % 4 == 0
#     p nums
#     p "Divisible by 4!"
#     return true
#   else
#     p "Not divible by 4"
#     return false
#   end
# else
#   p "Not Divisible by 2!"
#   return false
# end

# end

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


