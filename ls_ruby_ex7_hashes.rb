# Notes

puts """

Hashes usually written with symbols as keys.

{ :name => 'Jack', :age => 5 }

can be written as...

{ name: 'Jack', age: 5 }

Merging hashes...

hash_1 = { dog: 'scavenger' }
hash_2 = { cat: 'predator' }

hash_1.merge(hash_2) #==> { dog: 'scavenger', cat: 'predator' }

# You can use ! to save to hash_1 or assign to variable

"""

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

puts '''---------------'''

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + 
    " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")

taco = '''

Hash vs. Array

Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn\'t have a natural label, then typically an array will work fine.

Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.

Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

'''

puts taco

# .has_key?    
# .empty?

puts "----------------- EXERCISE 1 -----------------"

#given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

# Taking my shot

immediate_family = family.select { |key, value| (key == :sisters) || (key == :brothers) }

immediate_family_names = []

immediate_family[:sisters].each { |x| immediate_family_names << x }
immediate_family[:brothers].each { |x| immediate_family_names << x }

print immediate_family_names, "\n"

# Book's solution

immediate_family_new = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family_new.values.flatten

p arr

# my 2nd attemp the next day

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

print im_fam = family.select { |k, v| k == :sisters || k == :brothers }, "\n"
print im_fam.values.flatten!, "\n"


puts "----------------- EXERCISE 2 -----------------"

famous_first_last_names = { Tom: "Brady", John: "Smith" }
normal_first_last_names = { Kyle: "Miller", Susan: "Brooks" }


puts '''
famous_first_last_names = { Tom: "Brady", John: "Smith" }
normal_first_last_names = { Kyle: "Miller", Susan: "Brooks" }

'''
puts '''famous_first_last_names.merge(normal_first_last_names) =>'''
print famous_first_last_names.merge(normal_first_last_names), "\n"
puts ''
puts '''famous_first_last_names =>'''
print famous_first_last_names, "\n"
puts ''
puts '''famous_first_last_names.merge!(normal_first_last_names) =>'''
print famous_first_last_names.merge!(normal_first_last_names), "\n"
puts ''
puts '''famous_first_last_names =>'''
print famous_first_last_names, "\n"
puts ''
puts "normal_first_last_names"
print normal_first_last_names, "\n"
puts ''
puts "Conclusion: The ! saves the merge to the first hash called (destructable)"


puts "----------------- EXERCISE 3 -----------------"

puts "Hash: famous_first_last_names", famous_first_last_names

famous_first_last_names.each { |k, v| print "#{k} " }
puts ''
famous_first_last_names.each { |k, v| print "#{v} " }
puts ''
famous_first_last_names.each { |k, v| print "#{k}: #{v} " }
puts ''

puts "also could do like this"
famous_first_last_names.each_key { |key| puts key }
famous_first_last_names.each_value { |value| puts value }


puts "----------------- EXERCISE 4 -----------------"

person = {
  name: 'Bob', 
  occupation: 'web developer', 
  hobbies: 'painting'
}

puts person[:name]


puts "----------------- EXERCISE 5 -----------------"

puts person.values.include?('Bob')

# book soluation

puts person.has_value?('Bob')


puts "----------------- EXERCISE 6 -----------------"

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams = {}
       
words.each do |word|
    key = word.split('').sort.join
    unless anagrams.has_key?(key)
        anagrams[key] = [word]
    else
        # anagrams[key].push(word)
        anagrams[key] << word # or anagrams[key].push(word)
    end 
end

# puts anagrams
anagrams.each_value { |v| print v, "\n" }

puts "----------------- EXERCISE 7 -----------------"

puts '''
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

The difference between these is that one uses a symbol
and the other a string

'''

puts "----------------- EXERCISE 8 -----------------"

# B: There is no method called keys for Array objects

