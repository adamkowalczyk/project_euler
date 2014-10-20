# an improved method using integer#lcm, very fast
# important lesson here: can call any method on memo, :+ is no different to :lcm

def lcm_range(start,finish)
  (start..finish).inject(:lcm)
end
 
p lcm_range(1,20)