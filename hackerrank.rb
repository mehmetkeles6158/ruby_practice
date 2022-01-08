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

# --------Find a number------------#
def findNumber(arr, k)
  # Write your code here
  
  arr.each do |num|
    if k == num
      return "YES"
    end
    if k != num
      return "NO"
    end
  end

end

findNumber([1,2,3],2)
