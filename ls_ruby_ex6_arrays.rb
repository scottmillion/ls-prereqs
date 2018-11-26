# my way 1

arr_new = [1, 3, 5, 7, 9, 11]

puts "Type in number to check: "

number_new = gets.chomp.to_i

puts arr_new.include?(number_new) ? "#{number_new} is in array #{arr_new}" : "#{number_new} is not in array #{arr_new}"

# my way 2

arr = [1, 3, 5, 7, 9, 11]

puts "Type in number to check: "
input = gets.chomp.to_i

case arr.include?(input)
when true
  puts "#{input} is in your array #{arr}"
when false
  puts "#{input} is not in your array #{arr}"
end

puts "----------------- EXERCISE 2 -----------------"
puts '''
1. arr = ["b", "a"] 
   arr = arr.product(Array(1..3)) #==> [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last) # this will delete the 1 in ["b", 1], so it will return 1

Answer: arr returns [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)]) # [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first.delete(arr.first.last) # this will delete and return he [1, 2, 3] from ["b", [1, 2, 3]]

Answer: arr returns [["b"], ["a", [1, 2, 3]]]
'''

puts "----------------- EXERCISE 3 -----------------"

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0], "or..."
puts arr.last.first

puts "----------------- EXERCISE 4 -----------------"

puts '''

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) #==> 3 (found first object in array that\'s equal to argument)

# basically, 5 is first located at index 3

2. arr.index[5] #==> undefined method

3. arr[5] #==> 8

# what is located at index 5? 8.

'''

puts "----------------- EXERCISE 5 -----------------"

puts '''

string = "Welcome to America!"
a = string[6] # a = "e"
b = string[11] # b = "A"
c = string[19] # c = nil

'''

puts "----------------- EXERCISE 6 -----------------"

puts '''
You run the following code...

names = [\'bob\', \'joe\', \'susan\', \'margaret\']
names[\'margaret\'] = \'jody\'

...and get the following error message:

ypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]=\'
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>\'

What is the problem and how can it be fixed?

Answer: If the goal is to change \'margaret\'to \'jody\',
then you should use the index key as follow.
names[3] = \'jody\'

Note that you might need names.index(\'margaret\') to find the index
first.

names[names.index(\'margaret\')] = \'jody\'


'''

puts "----------------- EXERCISE 7 -----------------"

array = [1, 3, 3, 9, 1, 9, 7]

array_new = array.map { |i| i + 2 }

p array
p array_new



=begin

# loop_example.rb

loop do
  puts "This will keep printing until you hit Ctrl + C"
end

# useful_loop.rb

i = 0
loop do
  i += 1
  puts i
  break # this will cause the loop execution to stop
end

puts "----"

f = 0
loop do
  f += 2
  puts f
  if f == 10
    break
  end
end

puts "----"

# using 'next'

j = 0
loop do
  j += 2
  if j == 4
    next # this will skip the below and run loop again
  end
  puts j
  if j == 10
    break
  end
end



# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

until x == -10
  puts x
  x = x - 1
end

puts "Done!"

# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

# Not recommended method (but should be aware of...)

begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'


# countdown 3.rb

x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"
=end

