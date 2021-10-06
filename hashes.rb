
customer_data = []

1.times do
  p "Please enter your 'first name' :" 
  first_name = gets.chomp
  
  p "Please enter your 'last name' :" 
  last_name = gets.chomp

  p "Please enter your 'email' :"
  email = gets.chomp
  
  customer_data << {"first_name" => first_name, "last_name" => last_name, "email" => email, "acct #" => rand.to_s[2..11] }

end

p customer_data

p customer_data[0]["first_name"]

i = 0
while i < customer_data.length
  puts "FIRST NAME: #{ customer_data[i]["first_name"]}"
  puts "LAST NAME: #{ customer_data[i]["last_name"]}"
  puts "EMAIL: #{ customer_data[i]["email"]}"
  puts "ACCT #: #{customer_data[i]["acct #"]}"
  puts
  i += 1
end








