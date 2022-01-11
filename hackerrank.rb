# def breakingRecords(scores)
#   # Write your code here
#   solution = []
#   highest = scores[0]
#   lowest = scores[0]
#   count1 = 0
#   count2 = 0
#   i = 1
#   while i < scores.length
#       if scores[i] > highest
#         highest = scores[i]
#         count1 += 1
#       elsif scores[i] < lowest
#         lowest = scores[i]
#         count2 += 1
#       end
#       i+= 1
#   end
#   solution << count1
#   solution << count2
#   p solution

# end

# s = [10, 5, 20, 20, 4, 5, 2, 25, 1]
# p breakingRecords(s)

#--------------------------------------------------

# Two children, Lily and Ron, want to share a chocolate bar. Each of the squares has an integer on it.

# Lily decides to share a contiguous segment of the bar selected such that:

# The length of the segment matches Ron's birth month, and,
# The sum of the integers on the squares is equal to his birth day.
# Determine how many ways she can divide the chocolate.

# Example



# Lily wants to find segments summing to Ron's birth day,  with a length equalling his birth month, . In this case, there are two segments meeting her criteria:  and .

# Function Description

# Complete the birthday function in the editor below.

# birthday has the following parameter(s):

# int s[n]: the numbers on each of the squares of chocolate
# int d: Ron's birth day
# int m: Ron's birth month
# Returns

# int: the number of ways the bar can be divided

# def birthday(s, d, m)
#   # Write your code here
#   count = 0
#   if s.length == 1
#     count = 1
#   end
#   i = 0 
#   while i < s.length-1
#     if s[i] + s[i+1] == d
#       count += 1
#     end
#     i+=1
#   end
#  count
# end

# s= [1, 2, 1, 3, 2]
# d=3 
# m=2

# p birthday(s, d, m)

# # --------Find a number------------#
# def findNumber(arr, k)
#   # Write your code here
  
#   arr.each do |num|
#     if k == num
#       return "YES"
#     end
#     if k != num
#       return "NO"
#     end
#   end

# end

# findNumber([1,2,3],2)

#---------------------print odd numbers-----------

# def oddNumbers(l, r)
#   # Write your code here
  
#   while l < r
#     if l % 2 == 1 
#       p l
#     else
#       p l + 1
#     end
#     l += 2
#   end
  
# end

# oddNumbers(2,5)


#----------------------plusMinus----------------------

# def plusMinus(arr)
#   # Write your code here
#   count_1= 0;
#   count_2= 0;
#   count_3= 0;
#   n  = arr.length;
#   arr.each do |num|
#     if num > 0
#       count_1 += 1
#     elsif num < 0
#       count_2 += 1
#     else
#       count_3 +=1
#     end
#   end
    
#   p count_1.to_f / n.to_f
#   p count_2.to_f / n.to_f
#   p count_3.to_f / n.to_f

# end

# plusMinus([1,1,-1,-1,0,1])


#-----------------------min and max SUM ------------------------------------

# def miniMaxSum(arr)
#   # Write your code here
#   # find max number and subtract from sum to get min sum
#   # find min number and subtract from sum to get max sum
  
#   maxNum = arr[0]
#   miniNum = arr[0]
#   sum = 0
#   arr.each do |num|
#       if num > maxNum
#           maxNum = num
#       end
      
#       if num < miniNum
#           miniNum = num
#       end
      
#       sum = sum + num
#   end
  
#   minSum = sum - maxNum
#   maxSum = sum - miniNum
  
#   puts minSum.to_s + " " + maxSum.to_s

# end


# def divisibleSumPairs(n, k, arr)
#   # Write your code here
#   i = 0
#   j = i + 1
#   # count = 0
#   while i < n
#     while j < n
#       # if (arr[i] + arr[j]) % k == 0
#       #     count += 1
#       # end
#       p arr[i] + arr[j]
      
#       j += 1
#     end
#     i += 1
#   end
#   # p count
# end

# divisibleSumPairs(4,2,[2,3,5,8])


#---------------------------- migratoryBirds --------------------------------

# def migratoryBirds(arr)
  # Write your code here
  # find frenquency of nums in array first
  
#   frequent_nums = {}
  
#   arr.each do |num|
#       if frequent_nums[num]
#           frequent_nums[num] += 1
#       else
#           frequent_nums[num] = 1
#       end
#   end
  
#   max_value = frequent_nums.values[0]
#   max_frequent_keys= []
#   frequent_nums.each do |k,v|
#     if v > max_value
#        max_frequent_keys << k

#     end
#   end

#   p max_frequent_keys[0]
# end

# migratoryBirds([1, 4, 4, 4, 5 , 3])

#-----------------------------day of programmer----------------------------

def dayOfProgrammer(year)
  # Write your code here
  
  if year % 4 == 0 || year % 400 == 0 && year % 100 != 0
      return "12.09.#{year}"
  else
      return "13.09.#{year}"
  end

end


