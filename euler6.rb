# nicely laid out method

def square_dif(min,max)
  nums = (min..max).to_a
  nums_sum_sq = nums.inject(0) { |memo, n| memo += n**2}
  nums_sum = nums.inject(0) { |sum, n| sum + n }
  puts "The sum of the numbers #{min} to #{max} individually squared is #{nums_sum_sq}"
  puts "The sum of the numbers #{min} to #{max} summed then squared is #{nums_sum ** 2}"
  puts "The difference between th two sums is #{nums_sum ** 2 - nums_sum_sq}"
end

square_dif(1,100)

#one line version

puts ((1..100).to_a.inject(0) { |sum, n| sum + n }) ** 2 - (1..100).to_a.inject(0) { |memo, n| memo += n**2}