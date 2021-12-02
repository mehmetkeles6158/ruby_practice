# For a = [8, 5, 6, 16, 5], l = 1, and r = 3, the output should be solution(a, l, r) = [false, false, true, false, true].

# For a[0] = 8, we need to find a value of x such that 1 * x = 8, but the only value that would work is x = 8 which doesn't satisfy the boundaries 1 ≤ x ≤ 3, so b[0] = false.
# For a[1] = 5, we need to find a value of x such that 2 * x = 5, but there is no integer value that would satisfy this equation, so b[1] = false.
# For a[2] = 6, we can choose x = 2 because 3 * 2 = 6 and 1 ≤ 2 ≤ 3, so b[2] = true.
# For a[3] = 16, there is no an integer 1 ≤ x ≤ 3, such that 4 * x = 16, so b[3] = false.
# For a[4] = 5, we can choose x = 1 because 5 * 1 = 5 and 1 ≤ 1 ≤ 3, so b[4] = true.
 a = [8, 5, 6, 16, 5]
 l = 1
 r = 3

 i = 0 
 boolean= []
 while i < a.length
   x = a[i].to_f / (i+1).to_f
   y = (a[i]/(i+1)).to_f
    if  x >= l &&  x <= r && y == x
      boolean << "true"
    else
      boolean << "false"
    end
    i += 1
 end

 p boolean

 #--------QUESTION-02---------------
 #  You're developing a new programming language with some unusual features for strings! Among these is a method that returns the longest palindrome that can be formed with the characters of a given string.

# Given a string s, your task is to find this longest possible palindrome. You may use any number of the characters from s, and arrange them in any order (so long as it results in a palindrome).

# If there are multiple longest palindromes that can be formed, return the one among them that's lexicographically smallest.

# Example

# For s = "aaabb", the output should be solution(s) = "ababa".

# There are two possible palindromes of length 5 that can be obtained ("ababa" and "baaab"), but "ababa" is lexicographically smaller, thus it is the answer.

# For s = "aaabbbcc", the output should be solution(s) = "abcacba".

# It's not possible to form a palindrome of length 8, but from several palindromes of length 7, "abcacba" is the lexicographically smallest, thus it is the answer.



#--------QUESTION-03---------------

# Example
# For a = [25, 2, 3, 57, 38, 41], the output should be solution(a) = [2, 3, 5].
# Here are the number of times each digit appears in the array:

# 0 -> 0
# 1 -> 1
# 2 -> 2
# 3 -> 2
# 4 -> 1
# 5 -> 2
# 6 -> 0
# 7 -> 1
# 8 -> 1
# The most number of times any number occurs in the array is 2, and the digits which appear 2 times are 2, 3 and 5. So the answer is [2, 3, 5].

a = [25, 2, 3, 57, 38, 41]

# a.each do |n1|
#   p n1.to_s.chars.map(&:to_i)
# end

strings = []
a.each do |num|
  strings << num.to_s.chars
end

nums = []
i = 0
while i < strings.length
  j = 0
  while j < strings[i].length
    nums << strings[i][j].to_i
    j += 1
  end
  i += 1
end



h1 = {}
nums.each do |element|
  if h1[element]
    h1[element] += h1[element]
  else
    h1[element] = 1
  end
end


final = []
value = h1.values[0]
h1.each do |k,v|
  if v >= value
    final << k
  end
end

p final.sort


# max_frequent_digit = ""
# max_frequency = 0
# m = 0
# while m < nums.length
#   num01 = nums[m]
#   if h1[num01] > max_frequency
#     max_frequency = h1[num01]
#     max_frequent_digit = num01
#   end
#   m += 1
# end

# p max_frequent_digit






