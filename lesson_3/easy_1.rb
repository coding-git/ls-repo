# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

# Question 5
puts (10..100).cover?(42)

# Question 6

famous_words = "seven years ago..."
prefix = "Four score and "
puts prefix + famous_words
puts prefix << famous_words

# Question 8

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!

# Question 10

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstone = flintstones.assoc('Barney')
p flintstone