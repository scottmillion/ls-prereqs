puts "----------------- EXERCISE 1 -----------------"

array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

array.each do |word|
  if word.downcase =~ /lab/
    puts "'#{word}' has 'lab' in it!"
  else
    puts "'#{word}' does not have 'lab' in it!"
  end
end




puts "----------------- EXERCISE 2 -----------------"

def execute(&block)
  block # if .call were added it would print!
end

execute { puts "Hello from inside the execute method!" }

# nothing is printed to the screen because there is no 'call' on the block 
# the method returns a Proc object (I kind of understand this...)

puts "----------------- EXERCISE 3 -----------------"

# Exception handling are how errors are dealt with when they arise
# in a program. For example... rescue is a way for the program to
# know what to do when an error occurs so it can keep running instead
# of stopping the program.

# Book says:

# Exception handling is a structure used to handle the possibility 
# of an error occurring in a program. It is a way of handling the error 
# by changing the flow of control without exiting the program entirely.



puts "----------------- EXERCISE 4 -----------------"

def execute(&block)
  block.call # added .call
end

execute { puts "Hello from inside the execute method!" }


puts "----------------- EXERCISE 5 -----------------"

=begin
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
=end

puts "A block parameter require and '&' symbol ('&block' in this case)"



puts "----------------- Notes -----------------"

=begin


puts '''
regex - regular expression

Creating regular expressions starts with the forward
slash character (/). Inside two forward slashes you
can place any characters you would like to match with 
the string.

We can use the =~ operator to see if we have a match 
in our regular expression. Let\'s say we are looking 
for the letter "b" in a string "powerball". Here\'s 
  how we\'d implement this using the =~ operator

  irb :001 > "powerball" =~ /b/
=> 5

since 5 is a truthy value we can use as a boolean

'''



# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/ # or can use /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("Scott")


def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
print test(a), "\n"
print a


def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

# passing_block.rb

def take_block(number, &block)
  number -= 20
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# proc_example.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call


#passing_proc.rb

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)


names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# inline_exception_example.rb

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# divide.rb

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)


def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)

greet("Jack")

=end