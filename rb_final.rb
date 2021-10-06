
# p "What is your class'size :"

# size = gets.chomp.to_i

# puts "Pleas Enter Each Student' Name From your class :"

# students = []

# i = 0
# while i < size
#   name = gets.chomp
#   students << name
#   i += 1
# end

students = ["mehmet", "ali", "ahmet", "osman", "sule", "erik"]

group = students.shuffle.each_slice(2)

group.each do |g|
  puts "Group: #{g}" 

end

