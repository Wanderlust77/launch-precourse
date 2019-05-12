=begin
Below we have given you an array and a number. Write a program
that checks to see if the number appears in the array.
=end
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include? (number)
    puts "#{number} is in the array."
end

#What will the following programs return? What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

#Array(1..3) => [1,2,3]
#arr = arr.product(Array(1..3))
# => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# arr.first.delete(arr.first.last) => 1 
#arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

#returns [1, 2, 3]
#arr = [["b"], ["a", [1, 2, 3]]]

#How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

#What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) #=>3

#arr.index[5]
# => NoMethodError (undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>)
arr[5] #=>8

#What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6] #=>"e"
b = string[11] #=> "A"
c = string[19] #=> nil

=begin
Write a program that iterates over an array and builds a new array that is the 
result of incrementing each value in the original array by a value of 2. You 
should have two arrays at the end of this program, The original array and the 
new array you've created. Print both arrays to the screen using the p method instead of puts.
=end

arr = [1, 2, 3, 4, 5, 6, 7]

new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
