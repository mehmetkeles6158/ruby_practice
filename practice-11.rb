# 

# def great_word(n)
#   if n % 3 == 0 && n % 5 == 0
#     p "FizzBuzz"
#   elsif n % 3 == 0
#     p "Fizz"
#   elsif n % 5 == 0
#     p "Buzz"
#   else
#     puts n
#   end
# end

# great_word(4)


def palindrome(s)
  i = 0
  j = s.length - 1
  while i < j
    if s[i] != s[j]
      return false
    else
      return true
    end

    i += 1
    j -= 1
  end
end

p palindrome("racecar")