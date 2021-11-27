# Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

def solution(n)
  string = n.to_s
  arr = string.chars
  
  i = 0
  n = arr.length/2
  k = arr.length
  sum1 = 0
  sum2 = 0
  while i < n
    sum1 = sum1 + arr[i].to_i
  i += 1
  end
  
  while n < k
  sum2 = sum2 + arr[n].to_i
  n += 1
  end
  
  if sum1 == sum2
  p true
  else
  p false
  end

end

# Several people are standing in a row and need to be divided into two teams. The first person goes into team 1, the second goes into team 2, the third goes into team 1 again, the fourth into team 2, and so on.

# You are given an array of positive integers - the weights of the people. Return an array of two integers, where the first element is the total weight of team 1, and the second element is the total weight of team 2 after the division is complete.

# Example

# For a = [50, 60, 60, 45, 70], the output should be
# solution(a) = [180, 105].

def solution(a)
  i = 0
l = a.length
final = []
sum1 = 0
while i < l
  sum1 = sum1 + a[i]
  i += 2
end
final << sum1

j = 1
l = a.length
sum2 = 0
while j < l
  sum2 = sum2 + a[j]
  j += 2
end
final << sum2

p final
end

# Given a rectangular matrix of characters, add a border of asterisks(*) to it.
# Example
# For
# picture = ["abc",
#            "ded"]
# the output should be

# solution(picture) = ["*****",
#                       "*abc*",
#                       "*ded*",
#                       "*****"]

def solution(picture)
  picture.each do|element|
    element.insert(0, "*")
    element.insert(-1, "*")
  end
  
  n = picture[0].chars.count
  picture.insert(0, '*'*n)
  picture.insert(-1, '*'*n)
  
  p picture
  
end
