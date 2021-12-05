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


# Let's say a triple (a, b, c) is a zigzag if either a < b > c or a > b < c.

# Given an array of integers numbers, your task is to check all the triples of its consecutive elements for being a zigzag. More formally, your task is to construct an array of length numbers.length - 2, where the ith element of the output array equals 1 if the triple (numbers[i], numbers[i + 1], numbers[i + 2]) is a zigzag, and 0 otherwise.

# Example

# For numbers = [1, 2, 1, 3, 4], the output should be solution(numbers) = [1, 1, 0].

# (numbers[0], numbers[1], numbers[2]) = (1, 2, 1) is a zigzag, because 1 < 2 > 1;
# (numbers[1], numbers[2] , numbers[3]) = (2, 1, 3) is a zigzag, because 2 > 1 < 3;
# (numbers[2], numbers[3] , numbers[4]) = (1, 3, 4) is not a zigzag, because 1 < 3 < 4;
# For numbers = [1, 2, 3, 4], the output should be solution(numbers) = [0, 0];

# Since all the elements of numbers are increasing, there are no zigzags.

# For numbers = [1000000000, 1000000000, 1000000000], the output should be solution(numbers) = [0].

# Since all the elements of numbers are the same, there are no zigzags.


# You are given an array of non-negative integers numbers. You are allowed to choose any number from this array and swap any two digits in it. If after the swap operation the number contains leading zeros, they can be omitted and not considered (eg: 010 will be considered just 10).

# Your task is to check whether it is possible to apply the swap operation at most once, so that the elements of the resulting array are strictly increasing.

# Example

# For numbers = [1, 5, 10, 20], the output should be solution(numbers) = true.

# The initial array is already strictly increasing, so no actions are required.

# For numbers = [1, 3, 900, 10], the output should be solution(numbers) = true.

# By choosing numbers[2] = 900 and swapping its first and third digits, the resulting number 009 is considered to be just 9. So the updated array will look like [1, 3, 9, 10], which is strictly increasing.

# For numbers = [13, 31, 30], the output should be solution(numbers) = false.

# The initial array elements are not increasing.
# By swapping the digits of numbers[0] = 13, the array becomes [31, 31, 30] which is not strictly increasing;
# By swapping the digits of numbers[1] = 31, the array becomes [13, 13, 30] which is not strictly increasing;
# By swapping the digits of numbers[2] = 30, the array becomes [13, 31, 3] which is not strictly increasing;
# So, it's not possible to obtain a strictly increasing array, and the answer is false.


# Given an array of integers a, consider all its contiguous subarrays of length m. Calculate the number of such subarrays, which contain a pair of integers in it with sum greater than or equal to k.

# More formally, given the array a, your task is to count the number of such indices 0 ≤ i ≤ a.length - m such that a subarray [a[i], a[i + 1], ..., a[i + m - 1]] contains such pair (a[s], a[t]), such that:

# s ≠ t
# a[s] + a[t] ≥ k
# Example

# For a = [2, 4, 2, 7, 1, 6, 1, 1, 1], m = 4, and k = 8, the output should be solution(a, m, k) = 4.
# Let's consider all subarrays of length m = 4 and see which of them fit the description conditions:

# Subarray a[0..3] = [2, 4, 2, 7] contain a pair (a[0], a[3]) that have sum greater than or equal k: a[0] + a[3] = 2 + 7 + 9 ≥ 8. Note, that there are two more such pairs in the subarray: (a[1], a[3]) and (a[2], a[3]). Also note that there is a pair (a[3], a[3]) having sum 7 + 7 = 14 ≥ 8, but it shoudn't be taken into account, because it violates condition s ≠ t.
# Subarray a[1..4] = [4, 2, 7, 1] contains a pair (a[1], a[3]), having a[1] + a[3] = 4 + 7 = 11 ≥ 8. Note, that there is one more such pair in the subarray: (a[3], a[4]).
# Subarray a[2..5] = [2, 7, 1, 6] contains a pair (a[2], a[3]), having a[2] + a[3] = 2 + 7 = 9 ≥ 8. Note, that there are three more such pairs: (a[2], a[5]), (a[3], a[4]), and (a[3], a[5]).
# Subarray a[3..6] = [7, 1, 6, 1] contains a pair (a[3], a[4]) having the sum equal a[3] + a[4] = 7 + 1 = 8 ≥ 8. Note, that there is one more such pair in the subarray: (a[3], a[5]).
# Subarray a[4..7] = [1, 6, 1, 1] doesn't contain any pair having the sum greater than or equal to k = 8.
# Subarray a[5..8] = [6, 1, 1, 1] doesn't contain any pair having the sum greater than or equal to k = 8.
# Summary, there are 4 subarrays having a pair with sum greater than or equal to k = 8.

# For a = [2, 3, 3, 3, 4, 3, 2, 1, 2, 4], m = 2, and k = 7, the output should be solution(a, m, k) = 2.
# There are 2 subarrays satisfying the description conditions: a[3..4] = [3, 4] and a[4..5] = [4, 3].



def solution(a, m, k)
  i = 0
  s = 0
  t = 0
  count = 0
 subarr = []
 while i < a.length - m
    
     subarr << a[i]
     subarr << a[i + 1]
     subarr << a[i + m - 1]
     if subarr[s] + subarr[t] >= k
        count += 1
        else
        count
     end
    i+= 1
    s += 1
    t += 1
 end
 p count
end


# Let's say the string word is an occurrence of the string sequence if sequence contains word as a substring.

# Let's say the string word is a k-occurrence of the string sequence if sequence contains word repeated k times as a substring. Note that if word is an occurrence of sequence, it is a 1-occurrence as well.

# For example, if word = "ab" and sequence = "dabcacab", then word is a 1-occurrence of sequence but not a 2-occurrence, because sequence doesn't contain "abab" as a substring. On the other hand, the string "ca" is a 2-occurrence of sequence, since it contains "caca" as a substring.

# Given a string sequence and an array of strings words, your task is to find the maximal value of k for each element, such that words[i] is a k-occurrence of sequence. Return the k-values as an array of integers of length words.length.

# Example

# For sequence = "ababcbabc" and words = ["ab", "babc", "bca"], the output should be solution(sequence, words) = [2, 2, 0].

# words[0] = "ab" is a 2-occurrence of sequence, because sequence[0..4] = "abab";
# words[0] = "ab" is not a 3-occurence of sequence, because there is no substring "ababab" in sequence;
# words[1] = "babc" is a 2-occurrence of sequence, because sequence[1..8] = "babcbabc";
# words[1] = "babc" is not a 3-occurence of sequence, because there is no substring "babcbabcbabc" in sequence;
# words[2] = "bca" is a 0-occurrence of sequence, because there is no substring "bca" in sequence.