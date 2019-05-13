#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|value| puts "#{value}" }

#Same as above, but only print out values greater than 5.
puts "-----------"
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.select {|value| puts value if value>5 }

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
puts "-----------"
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.select {|value| puts value if value%2 != 0}

#Append "11" to the end of the original array. Prepend "0" to the beginning.
puts "-----------"
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.append(11)
puts my_array
puts "-----------"
my_array.prepend(0)
puts my_array

#Get rid of "11". And append a "3".
puts "-----------"
my_array.pop
my_array.append(3)
puts my_array

#Get rid of duplicates without specifically removing any one value.
puts "-----------"
my_array.uniq!
puts my_array

#What's the major difference between an Array and a Hash?
puts "-----------"
=begin
Arrays are ordered, integer-indexed collections of any object
A Hash is a collection of key-value pairs. It is similar to 
an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.
=end

#Create a Hash using both Ruby syntax styles.

#old_hash {:band => 'Burzum'}
#new_hash {band: 'Burzum'}

=begin
Suppose you have a hash h = {a:1, b:2, c:3, d:4}
1. Get the value of key `:b`.
2. Add to this hash the key:value pair `{e:5}`
3. Remove all key:value pairs whose value is less than 3.5
=end

puts "---------"
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e]=5
puts h
h.delete_if { |k, v| v < 3.5 }
puts h

#Can hash values be arrays? Can you have an array of hashes? (give examples)

# hash values as arrays
#hash = {fruits: ['kiwi', 'apple', 'banana']}

# array of hashes
#arr = [{car: 'bmw'}, {car: 'audi'}, {car: 'ford'}]

=begin
Given the following data structures. Write a program that moves the information
from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
#copied from solution as I was not able to figure this one out.
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts contacts
puts contact_data

#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

=begin
In exercise 12, we manually set the contacts hash values one by one. Now, 
programmatically loop or iterate over the contacts hash from exercise 12, 
and populate the associated data from the contact_data array. Hint: you will 
probably need to iterate over ([:email, :address, :phone]), and some helpful 
methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
=end

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

=begin
Use Ruby's Array method delete_if and String method start_with? to delete all 
of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
=end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") }

arr.delete_if { |word| word.start_with?("s", "w") }
=begin
Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
and turn it into a new array that consists of strings containing one word. 
(ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's
map and flatten methods, as well as String's split method.
=end

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a


=begin
What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
=end

#Output: These hashes are the same!