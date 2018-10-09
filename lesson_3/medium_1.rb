# Question 1

# 10.times { |a| puts "The Flintstones Rock!".prepend(" "*a) }
# 10.times { |a| puts (' '*a).concat('The Flintstones Rock!') }
# 10.times { |a| puts (' '*a) + 'The Flintstones Rock!' }

# Question 2
# puts "the value of 40 + 2 is #{40 + 2}"
# puts "the value of 40 + 2 is " + (40 + 2).to_s

# Question 3

# def factors(number)
#   if number > 0
#     dividend = number
#     divisors = []
#     while (dividend > 0) do
#       divisors << number / dividend if number % dividend == 0
#       dividend -= 1
#     end
#     divisors
#   else
#     'The input should be bigger than 0.'
#   end
# end
#
# p factors(10)

# Question 6

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]
#
#   return a_string_param, an_array_param
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = tricky_method(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Question 8

# munsters = {
#     "Herman" => { "age" => 32, "gender" => "male" },
#     "Lily" => { "age" => 30, "gender" => "female" },
#     "Grandpa" => { "age" => 402, "gender" => "male" },
#     "Eddie" => { "age" => 10, "gender" => "male" },
#     "Marilyn" => { "age" => 23, "gender" => "female"}
# }
#
# def mess_with_demographics(demo_hash)
#   # demo_hash = Hash.new(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end
#
# mess_with_demographics(munsters)
# p munsters

