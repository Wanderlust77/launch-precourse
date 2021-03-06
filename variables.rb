=begin
Write a program called name.rb that asks the user to type in 
their name and then prints out a greeting message with their name included.
=end
print "What's your first name? "
first_name = gets.chomp

print "What's your surname? "
surname = gets.chomp

puts "Hello " + first_name + " " + surname
10.times do
    puts name
end

=begin
Write a program called age.rb that asks a user how old 
they are and then tells them how old they will be in 10, 20, 30 
and 40 years. Below is the output for someone 20 years old.
=end

print "How old are you? "
age = gets.chomp.to_i
puts "In 10 years you will be: "
puts age+10
puts "In 20 years you will be: "
puts age+20
puts "In 30 years you will be: "
puts age+30
puts "In 40 years you will be: "
puts age+40

=begin
Add another section onto name.rb that prints the name of the user 10 times.
You must do this without explicitly writing the puts method 10 times in a row.
Hint: you can use the times method to do something repeatedly.
=end

=begin
Modify name.rb again so that it first asks the user for their first name, 
saves it into a variable, and then does the same for the last name. Then outputs
their full name all at once.
=end