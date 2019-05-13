=begin
Write a program that checks if the sequence of characters "lab" exists in the 
following strings. If it does exist, print out the word.
=end

def has_lab(string)
  if /lab/ =~ string
    puts "Match"
  else
    puts "No match"
  end
end


has_lab("laboratory")
has_lab("experiment")
has_lab("Pans Labyrinth")
has_lab("elaborate")
has_lab("polar bear")

#What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

#It returns a Proc- #<Proc:0x0000000001c44b58@(irb):5>

#What is exception handling and what problem does it solve?

=begin
In Ruby, exception handling is a process which describes a way to handle the error
raised in a program. Here, error means an unwanted or unexpected event, which 
occurs during the execution of a program, i.e. at run time, that disrupts the
normal flow of the program's instructions.
=end

#Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
