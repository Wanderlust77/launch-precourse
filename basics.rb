#Add two strings together that, when concatenated, return your first and last name as your full name in one string.

first_name = "Eva"
last_name = "Keller"

puts first_name + " " + last_name

=begin
Use the modulo operator, division, 
or a combination of both to take a 4 digit number 
and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

num = 3674

thousands = num / 1000
hundreds = num % 1000 / 100
tens = num % 1000 % 100 / 10
ones = num % 1000 % 100 % 10

puts thousands 
puts hundreds 
puts tens 
puts ones 

=begin
Write a program that uses a hash to store a list of movie titles with the year they came out. 
Then use the puts command to make your program print out the year of each movie to the screen. 
=end

movies = {
    :Hair => 1968,
    :Grease => 1976,
    :Avengers => 2018,
    :Matrix => 1993
}

puts movies[:Hair]
puts movies[:Grease]
puts movies[:Avengers]
puts movies[:Matrix]

=begin
Use the dates from the previous example and store them in an array.
Then make your program output the same thing as exercise 3.
=end

year = [1968, 1976, 2018, 1993]

puts year[0]
puts year[1]
puts year[2]
puts year[3]

#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5*4*3*2*1
puts 6*5*4*3*2*1
puts 7*6*5*4*3*2*1
puts 8*7*6*5*4*3*2*1

#Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts 3.14*3.14
puts 6.45*6.45
puts 10.35*10.35
