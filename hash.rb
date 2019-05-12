=begin
Given a hash of family members, with keys as the title and an array of names as
the values, use Ruby's built-in select method to gather only immediate family 
members' names into a new array.
=end


family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

p immediate_family

=begin
Look at Ruby's merge method. Notice that it
has two versions. What is the difference between merge and merge!?
Write a program that uses both and illustrate the differences.
=end

first_hash = {first_name: 'Bob'}
second_hash = {age: 42}

puts first_hash.merge(second_hash)
puts first_hash
puts second_hash
puts first_hash.merge!(second_hash)
puts first_hash
puts second_hash

=begin
Using some of Ruby's built-in Hash methods, write a program that loops 
through a hash and prints all of the keys. Then write a program that does the
same thing except printing the values. Finally, write a program that prints both.
=end

my_hash = {'Burzum': 'Filosofem', 'Mayhem': 'Freezing Moon', 'Nargaroth': 'Seven Tears', 'Heilung': 'Krigsgarld'}
my_hash.keys.each {|k| puts k}
my_hash.values.each {|v| puts v}
my_hash.each do |key, value|
    puts "#{key} and #{value}"
end
#my_hash.each { |key, value| puts "#{key} and #{value}" }

#Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

#What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

norwegian_black_metal = {'Burzum': 'Filosofem', 'Mayhem': 'Freezing Moon', 'Nargaroth': 'Seven Tears', 'Heilung': 'Krigsgarld'}
puts norwegian_black_metal.has_key?("Immortal")

=begin
Write a program that prints out groups of words that are anagrams. Anagrams are
words that have the same exact letters in them but in a different order. 
Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
(etc)
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#from solution!
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end



