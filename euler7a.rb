# checking only up to sqrt improves time greatly
# interestingly, trying to compare only against primes found so far slows it down a lot

def nth_prime(n)
  primes = []
	int = 2
	until primes.length == n
    if int <= 3
      primes << int
    else
      primes << int if (2..Math.sqrt(int)).all? { |x| int % x != 0 }
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

