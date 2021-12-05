# Solve an algorithm challenge with given inputs/outputs and/or automated tests
# Sequential Bi-grams
# Given a string of words, create a set of every sequential bi-gram.  Bigrams are two-word combinations of the text, i.e. "Charlie rocks".
 
# Example
# "Make a killer impression on whoever you're meeting."
 
# returns
# "Make a"
# "a killer"
# "killer impression"
# "impression on"
# Etc.

# requirements
# Generates a set of every possible bigram from a string of text
# Keep performance & memory usage in mind
# Include tests
# We prefer Ruby or Python, but you may use any language.

string = "Make a killer impression on whoever you're meeting."

# figure out to get each word and store them in array.
words = string.split(/\W+/)
p words

#loop through array and try to print next two words everytime
i = 0
while i < words.length
  p words [i] + " " + words[i+1]
  i += 1
end

#------------------------------------------------------------------

# Solve a real world problem with basic coding techniques
# Price Combinations
# Requirements: 
# Write a program which will process the data listed below. 
# The data must be placed into a csv file and read from it.
# The first line of the csv file is the target price and the following lines are menu items you could buy.
# The program should then find a combination of dishes that has a total of exactly the target price.
# If there is no solution found, then the program should print that there is no combination of dishes that is equal to the target price. 
# The program must run with different data files generated by us in the same format,
# so provide instructions on how to run the program from command line with command line parameters to read alternative input files.

# Here are some sample data values: 

# Target price, $15.05
# mixed fruit,$2.15
# french fries,$2.75
# side salad,$3.35
# hot wings,$3.55
# mozzarella sticks,$4.20
# sampler plate,$5.80
