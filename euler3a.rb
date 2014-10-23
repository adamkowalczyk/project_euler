# a more lengthy method without using the prime library
# TODO make some improvements to improve speed with a large number
# 1) divide out factor when found, 
# 2) check only odd numbers over 2

def prime_fact(n)
  factors = []
  non_prime = []

  # Find all factors, up to square root n 
  (1..Math.sqrt(n)).each { |x| factors << x if n % x == 0 }

  # Check if factors are prime
  # factors.delete(y) left y/2 in the array. why?. used non_prime array as a cludge.
  factors.each do |y|
    (2..y - 1).each { |z| non_prime << y if y % z == 0 }   
  end   
  
  # remove 1 from list of possible prime factors. should probably make this part of the factor finding algorithm
  factors.delete(1)
  primes = factors - non_prime
  
  # there can be max 1 prime factor > sqrt(n). Check if product of primes found == n, if not, find last factor
  product_check = primes.inject { |product, n| product * n } 
  primes << n / product_check unless product_check == n
    
  puts "The prime factors of #{n} are:\n#{primes}"
  puts "The largest prime factor is #{primes.max}"
end

prime_fact(10)
prime_fact(13195)
prime_fact(600851475143)  # => 6857 


