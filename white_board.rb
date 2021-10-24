# # Multiply all

# def multiply_all(arr)
#   x = 1
#   arr.each do |num|
#     x = num * x
#   end
#   return x
  
# end

# a1 = [2, 11, 5 , 3]

# p multiply_all(a1)


# # First_Two_Items
# def first_two(arr)

#   first_two = []
#   first_two = arr.sort
  
#   p first_item = arr.sort[0]
#   p second_item = arr.sort[1]
  
# end

# a2 = [2, 11, 5 , 3, 21, 34, 55]

# first_two(a2)

# #  ---Reverse Array---

# # input arr = [1,2,3,4]
# # output arr = [4,3,2,1]

# # here is my strategy. I will define a temp variable and store last element of array and make it equal to first and keep doint this.


# def reverse(arr)
#   i = 0
#   reverse_arr = []
#   arr.each do |item|
#     temp = arr[i-1]   
#     item = temp
#     i = i - 1
#     reverse_arr << item
#   end

#   p reverse_arr

# end

# reverse([1,2,3,4])

# #8) Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.

# #input => arr = [0,2,30,110,33,45,50,19,200]
# #output => 6

# def count_zeros (arr)

#   list = []
#   i = 0
#   total_zeros = 0
#   arr.each do |num|
#     list << num.to_s
#     n = list[i].chars.count("0") 
#     total_zeros = total_zeros + n
#     i += 1
#   end

#   return total_zeros

# end

# p count_zeros([0,2,30,110,33,45,50,19,200])


# #9) Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.

# def greater10(array)

#   array.all?{|item| item > 10}

# end
# arr1 = [11,12,13,14]
# p greater10(arr1)

# # 10) Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.

# # outcome => array = ["apple","orange",banana"]
# # input => 5

# # - count how many times does "a" appear in its string?
# # and add all apperances together

# def counta(array)
#   total_a = 0
#   array.each do |word|
#     n = word.chars.count("a")
#     total_a = n + total_a
#   end
#   p total_a
# end

# counta(["apple","orange","banana"])


# --- longest substring method ---
#- Find out chars of words into their arrays(chars method)

# - Figure out common chars of two words by iterating through arrays or use some build-in functions
# - Maybe we can put these chars in a new array.

# - Connect common chars into string by using join method

# - And return that string

# def longest_substring(word1, word2)

#   w1 = word1.chars
#   w2 = word2.chars

#   final_chars = []

#   w1.each do |char|
#     w2.each do |char2|
#       if char == char2
#         final_chars << char
#       end
#     end
#   end

#   p sub_string = final_chars.join

# end

# longest_substring("has","apple")


# input -> nums = [ 3, 1, 2, 7 , 8]

# output -> (3,7) and (2,8)(return nums in a hash)

# def adding_10(array)
  
#   pairs = {}
#   array.each do |num|
#     i = 0
#     if num.to_i + array[i].to_i == 10
      
#       pairs[num] = array[i]
#     end
#     i += 1
#   end

#   p pairs

# end

# adding_10([ 3, 1, 2, 7 , 8])


words = ["apple", "cart", "cat", "apple"]
frequent_word = {}

words.each do |word|

  if frequent_word[word]
    frequent_word[word] += 1
  else
    frequent_word[word] = 1
  end

end

p frequent_word

temp = 0
frequent_word.each do |key,value|
  if value > temp
    temp = value
  end

end

p temp



