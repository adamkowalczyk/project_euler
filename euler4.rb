# solves for 3 digits in under 0.5 seconds, but takes 80 seconds for 4 digits and hits a wall for 5
# break once you find a palindrome smaller than current max - time for 4 digits 22 with break, 28 without

def largest_palindrome(digits)
#  t1 = Time.new.to_f
  array = []
  
# n ** 0 = 1, so no special case needed for 1 digit!
  lower_lim = 10 ** (digits - 1)
  upper_lim = (10 ** digits) - 1

  (lower_lim..upper_lim).to_a.reverse.each do |n|
    (lower_lim..n).to_a.reverse.each do|x| 
      if (n * x).to_s == (n * x).to_s.reverse && !(array.include?(n * x))
        array << n * x
        break if n * x < array.max 
      end
    end  
  end
  puts "The largest palindromic number that can be obtained from \nthe product of two #{digits} digit numbers is #{array.max}"
  
#   t2 = Time.new.to_f
#   puts "Elapsed time: #{t2-t1} seconds"
end

largest_palindrome(3) # => 906609
