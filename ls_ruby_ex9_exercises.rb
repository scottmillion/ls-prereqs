puts "----------------- EXERCISE 1 -----------------"

array = (1..10).to_a
array.each { |element| print element, " " }
puts ""


puts "----------------- EXERCISE 2 -----------------"

array_new = (1..10).to_a
array_new.each do |element| 
  if element > 5 
    print element, " "
  end
end
puts ""

# or

array_new_2 = (1..10).to_a
array_new_2.each { |element| print element, " " if element > 5 }
puts ""


puts "----------------- EXERCISE 3 -----------------"

array_odd = array.select { |element| element % 2 != 0 }
print array_odd, "\n"


puts "----------------- EXERCISE 4 -----------------"

array << 11
array.unshift(0)
print array, "\n"


puts "----------------- EXERCISE 5 -----------------"

array.pop
array << 3
print array, "\n"


puts "----------------- EXERCISE 6 -----------------"

array.uniq!
print array, "\n"

puts "----------------- EXERCISE 7 -----------------"

puts "Arrays store values in order using numbers as keys.
      these keys are the indices"
puts "Hashes store values with keys that can be named and
      there is no set order (at least traditionally there
      has been no order to key value pairs in hashes)"


puts "----------------- EXERCISE 8 -----------------"

hash_1 = Hash.new #empty hash
hash_2 = {} #empty hash
hash_3 = { pizza: 'pepperoni' } # new
hash_4 = { :pizza => 'pepperoni' } #old


puts "----------------- EXERCISE 9 -----------------"

h = {a:1, b:2, c:3, d:4}

puts h[:b]
h[:e] = 5


h.each { |key, value| h.delete(key) if value < 3.5 }
puts h

# Solution version (better)

=begin

# one line version
  h.delete_if { |k, v| v < 3.5 }

  # multi-line version
  h.delete_if do |k, v|
    v < 3.5

=end

puts "----------------- EXERCISE 10 -----------------"

puts "Can hash values be arrays?"
puts "Yes, for example:

names = {
  boy_names: ['Tom','Jerry','Frank'],
  girl_names: ['Susan','Jenny','Sally']
}
"

puts """
Can you have an array of hashes? (give examples)

Yes!

array_of_hashes = [{ dog:'woof', cat:'meow' },{ pig:'oink', cow:'moo'}]

"""

array_of_hashes = [
  { 
    dog:'woof', 
    cat:'meow'
  }, 
  { 
    pig:'oink', 
    cow:'moo'
  }
]

puts "array_of_hashes[0]:"
puts array_of_hashes[0]
puts "array_of_hashes[1]:"
puts array_of_hashes[1]




puts "----------------- EXERCISE 11 -----------------"

puts "I don't quite understand the question, but I'll try to answer it.
I have taken a class on Rails so I have to say that https://guides.rubyonrails.org/
is my favorite place for api documentation and information at the moment."

puts "----------------- EXERCISE 12 -----------------"

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contact_data.each do |list|
  first_three_letters = (list[0][0] + list[0][1] + list[0][2]).capitalize
  
  the_name = contacts.keys.select { |k| k =~ /#{first_three_letters}/ }
  the_name = the_name[0]

  list.each do |element|
    
    if element =~ /@/
      contacts[the_name][:email] = element
    elsif element =~ /-/
      contacts[the_name][:phone] = element
    else 
      contacts[the_name][:street] = element 
    end 
  end
end

puts contacts

# Book solution (But it doesn't solve problem if more contacts or contact data are added)

=begin

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

=end

puts "----------------- EXERCISE 13 -----------------"

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

puts "----------------- EXERCISE 14 -----------------"

contact_data_new = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts_new = {"Joe Smith" => {}, "Sally Johnson" => {}}

shift_it = contact_data_new.first.shift
contacts_new.each do |k, v|
  contacts_new[k] = { 
    email: shift_it, 
    address: shift_it, 
    phone: shift_it 
  }
end

puts contacts_new



# Book Solution 1 (single entry)
=begin
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end


# Book Solution 2 (multiple entrieds as I did)

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end


=end


puts "----------------- EXERCISE 15 -----------------"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |a| a.start_with? 's' }

puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

print arr, "\n"

arr.delete_if { |a| (a.start_with? 's') || (a.start_with? 'w') }

puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

print arr, "\n"

arr.delete_if { |a| a.start_with?('s', 'w') }

puts arr

puts "----------------- EXERCISE 16 -----------------"

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a_new = []
a.each do |x|
  a_new << x.split(' ')
end

a_new.flatten!
print a_new, "\n"

# Book solution

=begin

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

=end

puts "----------------- EXERCISE 17 -----------------"

puts "What will this program output?"
puts ''' 
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
'''
puts "These hashes are the same!"














=begin
Extra Practice

contacts_new.each_with_index do |(key, value), index1|
  print key, "\n"
  print value, "\n"
  print index1, "\n"
  
end
=end