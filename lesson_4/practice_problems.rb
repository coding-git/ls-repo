###################################
# 1
###################################

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#
# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end
# p flintstones_hash

# counter = 0
# result = flintstones.each_with_object({}) do |name, flintstones_hash|
#   flintstones_hash[name] = counter
#   counter += 1
# end
# p result

###################################
# 2
###################################

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# sum_of_ages = 0
# ages.each { |name, age| sum_of_ages += age}
# puts sum_of_ages

# puts ages.values.reduce(:+)

###################################
# 3
###################################

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.reject { |key, value| value >= 100 }

###################################
# 4
###################################

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# puts ages.values.min

###################################
# 5
###################################
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# puts flintstones.index { |name| name.start_with?('Be') }

###################################
# 6
###################################
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.map! { |name| name.slice!(0,3) }

###################################
# 7
###################################
# statement = "The Flintstones Rock"
#
# freq_hash = {}
# statement_arr = statement.gsub(/\s+/, "").chars
#
# statement_arr.each { |char| freq_hash[char] = statement_arr.count(char) unless freq_hash.has_key?(char) }
#
# p freq_hash

# result = statement_arr.each_with_object({}) do |char, freq_hash|
#   if char.strip.empty?
#     next
#   elsif freq_hash.has_key?(char)
#     freq_hash[char] += 1
#   else
#     freq_hash[char] = 1
#   end
# end
# p result

###################################
# 9
###################################

# words = "the flintstones rock"
# words = words.split.map { |word| word.capitalize }.join(' ')
#
# puts words

###################################
# 10
###################################
#
# munsters = {
#     "Herman" => { "age" => 32, "gender" => "male" },
#     "Lily" => { "age" => 30, "gender" => "female" },
#     "Grandpa" => { "age" => 402, "gender" => "male" },
#     "Eddie" => { "age" => 10, "gender" => "male" },
#     "Marilyn" => { "age" => 23, "gender" => "female"}
# }
#
# munsters.each do |key, value|
#   age = value["age"]
#   group = case age
#     when 0..17
#       'kid'
#     when 17..64
#       'adult'
#     else
#       'senior'
#     end
#   munsters[key]['age_group'] = group
# end
#
# p munsters


countries_and_capitals = {
    'France' => 'Paris',
    'Belgium' => 'Brussels',
    'Morocco' => 'Rabat',
    'Barbados' => 'Bridgetown',
    'Peru' => 'Lima',
    'Bolivia' => 'La Paz',
    'Brazil' => 'Brasilia'
}

def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

p select_countries(countries_and_capitals)



