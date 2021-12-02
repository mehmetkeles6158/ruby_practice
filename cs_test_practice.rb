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
