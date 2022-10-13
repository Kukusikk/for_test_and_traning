require 'byebug'

def all_del(i)
    res=(2..i-1).select{ |e| (i%e==0) }
    res << 1
    res << i if i!=1
    res
  end
  
  def is_sqr?(sum_del)
    Math.sqrt(sum_del).to_r.denominator == 1
  end
  
  def list_squared(m, n)
    res=[]
    (m..n).each do |i|
        # byebug
      sum_2_del = all_del(i).map{|e| e**2}.sum
      
      res<< [i, sum_2_del] if is_sqr?(sum_2_del)
    end
    
    res
  end

  puts list_squared(1, 250)