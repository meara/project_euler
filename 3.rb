# 3 - Largest Prime Factor

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def prime_factor(num)
  i = 2
  factors = []
  while i <= num
    if num % i == 0
      factors << i
      num = num / i
    else
      i += 1
    end
  end
  factors
end


# p prime_factor(13195) == [5, 7, 13, 29]

p prime_factor(600851475143)