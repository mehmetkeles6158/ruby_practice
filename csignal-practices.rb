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
