# 4 - Largest Palindrome Product

# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product
  n = 999 ** 2
  while n >= 100 ** 2
    return n if is_palindrome?(n) && is_3d_product?(n)
    n -= 1
  end
end

def is_palindrome?(n)
  string = n.to_s
  halfway = (string.length - 1)/2
  i = 0
  while i <= halfway
    return false if string[i] != string[0 - (i + 1)]
    i += 1
  end
  true
end

def is_3d_product?(n)
  divisor = 999
  while divisor >= 100
    return true if n % divisor == 0 && n / divisor >= 100
    divisor -= 1
  end
  false
end

puts largest_palindrome_product