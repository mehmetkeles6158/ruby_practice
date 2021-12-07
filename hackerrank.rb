def breakingRecords(scores)
  # Write your code here
  solution = []
  highest = scores[0]
  lowest = scores[0]
  count1 = 0
  count2 = 0
  i = 1
  while i < scores.length
      if scores[i] > highest
        highest = scores[i]
        count1 += 1
      elsif scores[i] < lowest
        lowest = scores[i]
        count2 += 1
      end
      i+= 1
  end
  solution << count1
  solution << count2
  p solution

end

s = [10, 5, 20, 20, 4, 5, 2, 25, 1]
p breakingRecords(s)
