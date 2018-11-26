puts "--- Exercise 1 ---"

puts'''

What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# it adds 1 to a for every element in array x
# it returns the array x (only works with for iterators or ruby preferred for iterators)

'''

puts "--- Exercise 2 ---"

input = ''
while input != 'STOP'
    puts "Type 'STOP' to stop."
    input = gets.chomp
    puts "action taken"
end

puts "--- Exercise 3 ---"

top_5 = ["Tom", "Brady", "Steven"]

top_5.each_with_index { |elem, index| puts "#{index + 1}. #{elem}" }


puts "--- Exercise 4 ---"

# my solution

def countdown(num)
    num -= 1
    puts num if num >= 0
    if num < 0
        puts "Negative"
    elsif num == 0
        puts "Finished"
    else
        countdown(num)
    end
end

countdown(10)
countdown(-3)

=begin

Book solution:

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)


=end