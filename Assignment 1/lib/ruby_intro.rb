# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  s = 0
  for i in arr 
    s = s + i
  end
  if arr.length > 0
    return s
  else
    return 0
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  if arr.length > 1 
   a = arr.sort {|a,b| b<=>a}
    sum = a[0] + a[1] 
  end 
  if arr.length == 1
    sum = arr[0]
  end
  return sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  s = 0
  f = -1
  l = arr.length()
  for i in 0..l-1
    for j in i+1..l-1
      s = arr[i] + arr[j]
      if (s==number)
        f = 0
        break
      end
    end
  end
  if f==0
    return true
  else 
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end
  b = string.to_s[0].upcase
  if ((b=='A')|| (b=='E')|| (b=='I')||(b=='O')||(b=='U') )
    return false
  else
    special = "?<>',?[]}{=-)(*&^%$#`~{}"
    regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/
    if b =~ regex
      return false
    else
      return true
    end
  end


end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if not(string.is_a? Integer) and !(string =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  n = string.to_i
  if n%4==0
    return true
  else 
    return false
  end 
end

# Part 3

#Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
  def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if @price <= 0 or @isbn.empty? 
			raise ArgumentError
		end
	end

	def price_as_string
		return "$#{'%.2f' %  @price}"
	end
  
end
  
	


