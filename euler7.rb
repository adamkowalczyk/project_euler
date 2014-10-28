# brute force method with no refinements other than checking odd numbers only
# pretty slow

def nth_prime(n)
	primes = []
	int = 2
	until primes.length == n
    if int <= 3
      primes << int
    else
      primes << int if (2..int - 1).all? { |x| int % x != 0 }
    end
    if int < 3
      int += 1
    else
      int += 2
    end
  end
  puts "Prime number #{n} is #{primes.last}"
end


nth_prime(10001) # => 104743