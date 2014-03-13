#5 - Smallest Multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
#  without any remainder.

# What is the smallest positive number that is evenly divisible
#  by all of the numbers from 1 to 20?

def smallest_multiple(factors)
  primes = Hash.new(0)
  factors.each do |n|
    p_facts = prime_factors(n)
    p_facts.each do |factor, power|
      primes[factor] = power if power >= primes[factor]
    end
  end
  expand(primes)
end

def prime_factors(n)
  primes = Hash.new(0)
  i = 2
  while n > 1
    if n % i == 0
      primes[i] += 1
      n = n / i
    else
      i += 1
    end
  end
  primes
end

def expand(primes)
  product = 1
  primes.each do |factor, power|
    product *= factor ** power
  end
  product
end


# puts prime_factors(2520)
# primes = { 2 => 3, 3 => 2, 5 => 1, 7 => 1}
# puts expand(primes)

puts smallest_multiple(1..20)