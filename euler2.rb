# recursive fib...

#def fibonacci(n)
#  if n < 2
#    n
#  else
#    ( fibonacci(n - 1) + fibonacci(n - 2) )
#  end
#end  
#puts fibonacci(33)
# => 3524578   largest term less than 4 million, 

# however, I had to look up that fib33 was the highest under 4 million
# an iterative approach would more easily allow us to limit the method by the max number

# normally i=0 j=1, but PE specifies series starts 1,2..
# N.B, simultaneous variable reassignment in while loop

def fib(num)
  i = 1
  j = 2
  while i <= num
    yield i
    i, j = j, i + j
  end
end

def fib_even_sum(num)
  results = []
  fib(num) { |i| results << i }
  results.select! { |n| n.even? }
  puts "All the even fibonacci numbers below #{num}:"
  p results
  puts "Their sum is:"
  p results.inject { |sum, n| sum + n}
end

fib_even_sum(4_000_000)
# 4,000,000 => 4613732







