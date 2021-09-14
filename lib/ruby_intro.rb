# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for i in arr
    sum = sum + i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  maxsum = 0
  if arr.length() == 1 then
    maxsum = arr[0]
  elsif arr.length() > 1 then
    arr = arr.sort.reverse
    maxsum = arr[0]+arr[1]
  end
  return maxsum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #print arr,arr.length,n
  if arr.length == 1
     return false
  end
  for num in 0..arr.length-2
    #puts 'num',num
    for num2 in num+1..arr.length-1
      #puts 'num2',num2
      if n == arr[num] + arr[num2]
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #print s[0]
  if s.length == 0
    return false
  end
  if s.match(/^[^aeiou0-9\W]/i) != nil
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  decimal = 0
  if s.length == 0
    return false
  end
  for index in 0..s.length-1
    #print s[index]=='1'
    if s[index] == '0' or s[index] == '1'
      decimal = decimal+(s[index].to_i*(2**(s.length - index - 1)))
    else
      return false
    end
  end
  if decimal%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn.length == 0 or @price < 0 or @price == 0
      raise ArgumentError
    end
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    return '$'+'%.2f'%@price
  end
end
