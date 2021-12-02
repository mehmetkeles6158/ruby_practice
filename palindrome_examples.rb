
# p longest_palindrome('abcdefghba', 10)

def longest_palindrome(string)
  longest = ''
  i = 0
  while i < string.length
    j = 1
    while (i + j) <= string.length
      x = string.slice(i, j)
      if (x.length > longest.length) && (x == x.reverse)
        longest = x
      end
      j += 1
    end
    i += 1
  end
  longest
end

p longest_palindrome('abbadefghba')