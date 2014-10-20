# learned to return memo if conditional not met, otherwise inject returns nil

def fizzbuzz_sum(num)
  (1...num).inject(0) {|sum, n| (n % 3 == 0) || (n % 5 == 0) ? sum + n : sum }
end

p fizzbuzz_sum(1000)

# 1000 => 233168
    
  