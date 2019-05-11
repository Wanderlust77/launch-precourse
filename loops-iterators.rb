=begin
Write a while loop that takes input from the user, performs an action,
and only stops when the user types "STOP". Each loop can get info from the user.
=end

x = ""
while x != "STOP" do
  puts "Did you understand this lecture?"
  answer = gets.chomp
  puts "Do you want to go through it again?"
  x = gets.chomp
end

#second solution
x = gets.chomp.to_i
while x>=0 do
    puts x
    puts "Do you want me to continue?"
    answer = gets.chomp
    x -= 1
    if answer == 'STOP'
        break
    end
end

=begin
Use the each_with_index method to iterate through an array of your 
creation that prints each index and value of the array.
=end

bands = ["Mayhem", "Burzum", "Asphyx", "The Doors"]

bands.each_with_index do |bands, index|
    puts "#{index + 1}. #{bands}"
end

#Write a method that counts down to zero using recursion.

def countdown(number)
    if number <= 0
    puts number
  else
    puts number
    countdown(number-1)
  end
end

puts countdown(10)