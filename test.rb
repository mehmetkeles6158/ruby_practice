# *Pair program to fix the errors in each problem.*
# Exercise 1: Print a message to a pirate.

# puts "Hello!"

# answer = gets.chomp

# if answer == "Bye"
#   puts "Go away, pirate."
# else
#   puts "Greetings, hater of pirates!"
# end

# Exercise 2: Write a function to print when a person has died in a sentence.

# dickens = ["Charles Dickens" , 1870]
# thackeray = ["William Thackeray", 1863]
# trollope = ["Anthony Trollope" , 1882]
# hopkins = ["Gerard Manley Hopkins", 1889]

# def died(array)
  
#   name = array[0]
#   name = array[1]
#   puts  "#{name} died in #{year}."

# end


#   puts died(Dickens)
#   puts died(thackeray)
#   puts died(trollop)
#   puts died(hopkins)

# Exercise 4: Make a class to store and display a person’s info.

class Person
  attr_reader :first_name , :last_name
  attr_writer :first_name , :last_name
  def initialize(input_first_name, input_last_name)
    @first_name = input_first_name
    @last_name = input_last_name
  end

  def info
    puts "#{@first_name} , #{@last_name}"
  end

end
person1 = Person.new("Thomas", "Jefferson")
puts person1.first_name
puts person1.info
