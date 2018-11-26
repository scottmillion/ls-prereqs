# Variables are only assigned to a memory point in time.

# For examples, a = 4 then b = a then a = 7... if you call b it'll be 4 not 7 now

# gets method... stands for 'gets string'

puts "----------------- EXERCISE 1 -----------------"

puts "Type in your name: "
a_name = gets.chomp
puts "Hello, #{a_name}, nice to meet you!"

puts "----------------- EXERCISE 2 -----------------"

print "How old are you? "
age = gets.chomp.to_i
puts "In 10 years  you will be:"
puts age + 10
puts "In 20 years  you will be:"
puts age + 20
puts "In 30 years  you will be:"
puts age + 30
puts "In 40 years  you will be:"
puts age + 40

puts "----------------- EXERCISE 3 -----------------"

10.times { puts "#{a_name}" }

puts "----------------- EXERCISE 4 -----------------"

puts "Type in your first name: "
first_name = gets.chomp
puts "Type in your last name: "
last_name = gets.chomp
puts "Hello, #{first_name} #{last_name}, nice to meet you!"

puts "----------------- EXERCISE 5 -----------------"

puts "In example 1 'x' will be 3"
puts "In example 2 there will be an undefined local variable error for 'x' 
since it's defined inside a block first and then called outside a block."