=begin
Write a program that prints a greeting message. This program should contain a 
method called greeting that takes a name as its parameter and returns a string.
=end

def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting("Bob")

#mutate.rb--------------
a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"


#return.rb-----------

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

=begin
Write a program that prints a greeting message. This program should contain a
method called greeting that takes a name as its parameter and returns a string.
=end

def greeting(name)
  puts "Hello" + name
end

puts greeting("Eva")

#What do the following expressions evaluate to?

x = 2 #2

puts x = 2 #error

p name = "Joe" #Joe

four = "four" #"four"

print something = "nothing" #nil

=begin
Write a program that includes a method called multiply that takes
two arguments and returns the product of the two numbers.
=end


def multiply(a, b)
  a*b
end

puts multiply(a, b)


#What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return 
  
end

puts scream("Yippeee")

#It will not print anything to the screen.

#1) Edit the method definition in exercise #4 so that it does print words on the screen.
#2) What does it return now? Still nil

=begin
What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>
  
In the calculate_product method two arguments are required but you're only giving one.
=end







