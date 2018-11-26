puts "----------------- EXERCISE 1 -----------------"

puts "Scott " + "Million"

puts "----------------- EXERCISE 2 -----------------"

four_digit_number = 5432
hundreds = four_digit_number % 1000
tens = hundreds % 100
ones = tens % 10 
thousands = four_digit_number - hundreds

puts "Original number: #{four_digit_number}", "Thousands: #{thousands}", 
        "Hundreds: #{hundreds}", "Tens: #{tens}", "Ones: #{ones}"

puts "----------------- EXERCISE 3 -----------------"

movies = { 
  movie_1: 1975,
  movie_2: 2004,
  movie_3: 2013,
  movie_4: 2001,
  movie_5: 1981
}

movies.each { |movie, year| puts year }

puts "----------------- EXERCISE 4 -----------------"

movies = { 
  movie_1: 1975,
  movie_2: 2004,
  movie_3: 2013,
  movie_4: 2001,
  movie_5: 1981
}

movie_years = Array.new
movies.each { |movie, year| movie_years << year }

print movie_years, "\n"

puts "----------------- EXERCISE 5 -----------------"

def get_factorial(num)
  number_list = (2..num).to_a
  factorial = 1
  number_list.each { |x| factorial *= x }
  print "#{num}'s factorial = #{factorial}", "\n"
end

get_factorial(5)
get_factorial(6)
get_factorial(7)
get_factorial(8)


puts "----------------- EXERCISE 6 -----------------"

def square_float(num)
  num ** 2
end

puts square_float(3.3)
puts square_float(5.9)
puts square_float(5.2)

puts "----------------- EXERCISE 7 -----------------"

puts "Error Message: "
puts "SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}' from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'"
puts "This means Ruby is expecting a '}' to be where a ']' currently is."