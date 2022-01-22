def sockMerchant(n, ar)
  # Write your code here
  # find out how many times each number repeated (use hash)
  # and if number of repeation is greater or equal to 2 and divide this number by 2 to get answer as integer and not a float.
  # add final answers together to get pairs.
  frequent_nums = {}
  ar.each do |num|
      
      if frequent_nums[num]
          frequent_nums[num] += 1
      else
          frequent_nums[num] = 1
      end
      
  end
  
  sum_pairs = 0
  frequent_nums.each do |k,v|
      if v >= 2
          a = v/ 2
          sum_pairs = sum_pairs + a
      end
  end
  
  p sum_pairs

end