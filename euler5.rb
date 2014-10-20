#  brute force method
# took just under 10 minutes for 1..20 using divisors#inject
# took 140 seconds using divisors.all? 
# takes 9 seconds incrementing dividend by max divisor rather than 1!

def lcm_range (min,max)
#  t1 = Time.new.to_f
  
  divisors = (min..max)
  dividend = max
  
  until divisors.all? { |n| dividend % n == 0 }
    dividend += max
  end
  p dividend
  
#   t2 = Time.new.to_f
#   puts "Time: #{t2-t1} seconds"  
end
  
lcm_range(1,20)

# (1..20) => 232792560