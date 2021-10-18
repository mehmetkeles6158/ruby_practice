# Multiply all

def multiply_all(arr)
  x = 1
  arr.each do |num|
    x = num * x
  end
  return x
  
end

a1 = [2, 11, 5 , 3]

p multiply_all(a1)


# First_Two_Items
def first_two(arr)

  first_two = []
  first_two = arr.sort
  
  p first_item = arr.sort[0]
  p second_item = arr.sort[1]
  
end

a2 = [2, 11, 5 , 3, 21, 34, 55]

first_two(a2)

#  ---Reverse Array---

# input arr = [1,2,3,4]
# output arr = [4,3,2,1]

# here is my strategy. I will define a temp variable and store last element of array and make it equal to first and keep doint this.


def reverse(arr)
  i = 0
  reverse_arr = []
  arr.each do |item|
    temp = arr[i-1]   
    item = temp
    i = i - 1
    reverse_arr << item
  end

  p reverse_arr

end

reverse([1,2,3,4])

