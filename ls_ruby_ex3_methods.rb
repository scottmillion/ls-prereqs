puts "----------------- EXERCISE 1 -----------------"

def greeting(name="person")
  print "Hello #{name}, how are you?", "\n"
end

greeting()
greeting("Bob")

puts "----------------- EXERCISE 2 -----------------"

puts '''x = 2 # => 2
puts x = 2 # => nil
p name = "Joe" # => "Joe"
four = "four" # => "four"
print something = "nothing" # => nil'''

puts "----------------- EXERCISE 3 -----------------"

def multiply(num1, num2)
  num1 * num2
end

puts multiply(4,7)

puts "----------------- EXERCISE 4 -----------------"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

puts "This will return 'Yippeee!!!!' but will not print it"

puts "----------------- EXERCISE 5 -----------------"

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

puts "----------------- EXERCISE 6 -----------------"

puts """
  ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
  """

puts "### The method requires another argument."