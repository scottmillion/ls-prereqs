puts "----------------- EXERCISE 1 -----------------"

"""
1. (32 * 4) >= 129
false
2. false != !true
false
3. true == 4
false
4. false == (847 == '847')
true
5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
true


"""


puts "----------------- EXERCISE 2 -----------------"

def all_caps(words)
  unless words.length > 10
    words
  else
    words.upcase
  end
end

puts all_caps("Pizza")
puts all_caps("Pizza Delivery Guy")


puts "----------------- EXERCISE 3 -----------------"

puts "Type in a number between 0 and 100: "

input = gets.chomp.to_i
answer = case
  when input < 0
    "#{input} is a negative number! You didn't follow directions!"
  when input <= 50 && input >= 0
    "#{input} is less than or equal to 50"
  when input >= 51 && input <= 100
    "#{input} is greater than 50"
  when input > 100
    "#{input} is greater than 100! You didn't follow directions!"
end

puts answer

puts "----------------- EXERCISE 4 -----------------"
=begin

1. '4' == 4 ? puts("TRUE") : puts("FALSE")

====> FALSE

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end

====> Did you get it right?

3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end

====> Alright now!

=end

puts "----------------- EXERCISE 5 -----------------"

def compare_number(input_2)
  answer_2 = case
    when input_2 < 0
      "#{input_2} is a negative number! You didn't follow directions!"
    when input_2 <= 50 && input_2 >= 0
      "#{input_2} is less than or equal to 50"
    when input_2 >= 51 && input_2 <= 100
      "#{input_2} is greater than 50"
    when input_2 > 100
      "#{input_2} is greater than 100! You didn't follow directions!"
  end
end

puts "Type in a number between 0 and 100: "
input_2 = gets.chomp.to_i
puts compare_number(input_2)

puts "----------------- EXERCISE 6 -----------------"

=begin

# BROKEN 

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

=end

puts "Why do we get: "
puts "#==> exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end"
puts "Because there's no 'end' for the if statement!"

=begin

# FIXED 

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

=end

