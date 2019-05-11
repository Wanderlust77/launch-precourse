# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i 

#gets-to let the user input a number
#chomp gets rid of the new line created when the user enters the data
#to_i is a method that can be called on a string to turn it into an integer. 
#We need to convert the input into an integer because gets always gives us a string.

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

# case_statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# case_statement.rb <-- refactored
#ou can also save the result of a case statement into a variable
a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer

# case_statement.rb <-- refactored with no case argument

a = 5

answer = case
  when a == 5
    "a is 5"
  when a == 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer

=begin Write down whether the following expressions return true or false. 
Then type the expressions into irb to see the results.


1. (32 * 4) >= 129   #false
2. false != !true    #false
3. true == 4         #false
4. false == (847 == '847')     #true
5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false     #true

=end

=begin
Write a method that takes a string as argument. The method should return a new, 
all-caps version of the string, only if the string is longer than 10 characters.
Example: change "hello world" to "HELLO WORLD".
=end



def up_case(string)
    if string.length > 10
        string.upcase
    else
        string
    end
end

puts up_case ("Good morning!")
puts up_case("Good morning Vietnam!")

=begin
Write a program that takes a number from the user between 0 and 100 and reports
back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

print "Pick a number between 0 and 100! "
number = gets.chomp.to_i

if number < 0
    puts "It's a negative number!"
elsif  number <= 50
  puts "You picked #{number} and it is betwen 0 and 50."
        
elsif number <= 100
  puts "You picked #{number} and it is between 51 and 100."
  
else
  puts " #{number} is above 100. "
end

=begin
1. '4' == 4 ? puts("TRUE") : puts("FALSE")  => "FALSE"

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end                                   => "Did you get it right?"

3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end                                 => "Alright now!"
   
=end

#Rewrite your program from exercise 3 using a case statement. Wrap this new case statement in a method and make sure it still works.

def pick_number(number)

    case 

    when number < 0
        puts "You can't enter a negative number!"
    when number <= 50
        puts "#{number} is between 0 and 50"
    when number <= 100
        puts "#{number} is between 51 and 100"
    else
        puts "#{number} is above 100"
    end
end
puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

pick_number(number)

        







